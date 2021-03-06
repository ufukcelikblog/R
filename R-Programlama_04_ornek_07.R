library(caret)
data("diamonds")
veri <- diamonds
rm(diamonds)

head(veri,3) # ilk 3 kay�t� g�sterir
tail(veri) # son 6 kayd� g�sterir

summary(veri)

library(summarytools)
view(dfSummary(veri))

veri[, 1] # 1. s�tun
veri[, c(3,6)] # 3. ve 6. s�tun
veri[, "price"]
veri$price
# veri k�mesinde price 5000'den b�y�k olan sat�rlar� se�er
veri[veri[,"price"] > 5000, ]
veri[c(1,2,3,4,34,56,236), ]
veri[veri[,"price"] > 5000, "price"]

class(veri)
dim(veri)
ls(veri)
names(veri)

boxplot(veri[,c(4,5,6)], main="Elmas Grafi�i", ylab="Karat")

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
  ggtitle("Elmas Fiyat Da��l�m�") + 
  xlab("Elmas Fiyat� U$") + 
  ylab("Frekans�")

ggplot(veri, aes(x = cut, fill = cut)) + 
  geom_bar() +
  labs( x = "Elmaslar�n kesim t�r�",
        y = "Frekanslar",
        title = "Kesimlerine g�re elmas t�rleri",
        caption = "Kaynak: Diamonds veri seti")

## Berral�k Durumu �l��t�ne G�re En k�t�den En iyi Berrakl��a Do�ru S�ralanm�� Elmas
## Say� Toplamlar�.
## Berrakl�k Durumu say�lar� almak i�in �ncelikle df_berraklik veri �er�evesi
## olu�turuyoruz.
df_berraklik <- data.frame(
  berraklik_tbl = table(veri$clarity),
  stringAsFactors = TRUE
)

ggplot(data=df_berraklik,
       aes(x = berraklik_tbl.Var1, y = berraklik_tbl.Freq, fill = berraklik_tbl.Var1)) +
  ggtitle("Berrakl�klar�na G�re Elmas Say�lar�") +
  labs(fill = "Berrakl�k T�r.") +
  xlab("Berral�k") +
  ylab("Toplam Say�") +
  geom_bar(stat="identity") +
  geom_text(aes(label=berraklik_tbl.Freq),
            vjust=1, colour="yellow")

