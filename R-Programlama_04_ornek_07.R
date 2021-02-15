library(caret)
data("diamonds")
veri <- diamonds
rm(diamonds)

head(veri,3) # ilk 3 kayýtý gösterir
tail(veri) # son 6 kaydý gösterir

summary(veri)

library(summarytools)
view(dfSummary(veri))

veri[, 1] # 1. sütun
veri[, c(3,6)] # 3. ve 6. sütun
veri[, "price"]
veri$price
# veri kümesinde price 5000'den büyük olan satýrlarý seçer
veri[veri[,"price"] > 5000, ]
veri[c(1,2,3,4,34,56,236), ]
veri[veri[,"price"] > 5000, "price"]

class(veri)
dim(veri)
ls(veri)
names(veri)

boxplot(veri[,c(4,5,6)], main="Elmas Grafiði", ylab="Karat")

dfKesim <- data.frame(
  kesim = table(veri$cut),
  stringsAsFactors = TRUE
)
ggplot(data = dfKesim, aes(x=kesim.Var1, y=kesim.Freq)) +
  geom_bar(stat="identity") +
  geom_text(aes(label=kesim.Freq), vjust=2, color="white", size=5)

ggplot(data = veri) +
  geom_point(mapping = aes(x=carat, y=price, color=cut))

ggplot(data=veri) + 
  geom_histogram(binwidth=500, aes(x=price)) + 
  ggtitle("Elmas Fiyat Daðýlýmý") + 
  xlab("Elmas Fiyatý U$") + 
  ylab("Frekansý")

ggplot(veri, aes(x = cut, fill = cut)) + 
  geom_bar() +
  labs( x = "Elmaslarýn kesim türü",
        y = "Frekanslar",
        title = "Kesimlerine göre elmas türleri",
        caption = "Kaynak: Diamonds veri seti")

## Berralýk Durumu Ölçütüne Göre En kötüden En iyi Berraklýða Doðru Sýralanmýþ Elmas
## Sayý Toplamlarý.
## Berraklýk Durumu sayýlarý almak için öncelikle df_berraklik veri çerçevesi
## oluþturuyoruz.
df_berraklik <- data.frame(
  berraklik_tbl = table(veri$clarity),
  stringAsFactors = TRUE
)

ggplot(data=df_berraklik,
       aes(x = berraklik_tbl.Var1, y = berraklik_tbl.Freq, fill = berraklik_tbl.Var1)) +
  ggtitle("Berraklýklarýna Göre Elmas Sayýlarý") +
  labs(fill = "Berraklýk Tür.") +
  xlab("Berralýk") +
  ylab("Toplam Sayý") +
  geom_bar(stat="identity") +
  geom_text(aes(label=berraklik_tbl.Freq),
            vjust=1, colour="yellow")

