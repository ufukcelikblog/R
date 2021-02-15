devtools::install_github("algopoly/EVDS")
library(EVDS)

set_evds_key("API Anahtarý")

# Kategori Listesi
kategoriler <- show_categories()

# Veri Gruplarý
gruplar <- show_datagroups()

# Bir veri grubundaki tüm seriler
# Döviz Kurlarý Grubu
grupSeriler <- show_serie_lists(ccode="bie_dkdovytl")

# Tüm Seriler
tumSeriler <- get_all_series()

# Örnek Seri
df <- get_series(
  series = c("TP.DK.USD.A.YTL", "TP.DK.EUR.A"),
  start_date = "01-01-2005",
  end_date = "24-12-2020"
)
head(df$items)

kurVeri <- df$items
kurVeri$UNIXTIME <- NULL
kurVeri$Tarih <- as.POSIXct(kurVeri$Tarih, format="%d-%m-%Y")
kurVeri <- kurVeri[!is.na(kurVeri$TP_DK_USD_A_YTL), ]
kurVeri <- kurVeri[!is.na(kurVeri$TP_DK_EUR_A), ]
kurVeri$TP_DK_USD_A_YTL <- as.numeric(as.character.numeric_version(kurVeri$TP_DK_USD_A_YTL))
kurVeri$TP_DK_EUR_A <- as.numeric(as.character.numeric_version(kurVeri$TP_DK_EUR_A))

plot(kurVeri$Tarih, kurVeri$TP_DK_USD_A_YTL, 
     col="red", type="l", xlab = "TARÝH", ylab = "KUR")
lines(kurVeri$Tarih, kurVeri$TP_DK_EUR_A, col="blue", type="l")
legend("topleft", legend=c("Dolar", "Euro"), col=c("red", "blue"), lty=1:2, cex=0.8)

library(ggplot2)

ggplot(data=kurVeri, aes(x=Tarih)) +
  geom_line(aes(y=TP_DK_USD_A_YTL, color="red")) + 
  geom_line(aes(y=TP_DK_EUR_A, col="blue")) +
  ylab("KUR")

meltedDF <- reshape2::melt(kurVeri, id.var="Tarih")
ggplot(meltedDF, aes(x=Tarih, y=value, color=variable)) + geom_line()






