library(RCurl) # EVDS'ye baðlantý için
library(XML) # XML veri kullanýmý için
library(plyr) # XML veriyi data.frame'e çevirmek için

# evds sisteminden aldýðýmýz API anahtarýný buraya yazýyoruz
anahtar <- "AFt1nOvyPr"

# veriseti ile verilen verinin, baslangýç ve bitiþ tarihleri arasýný
# anahtar=API Anahtarýnýz olacak þekilde girince 
# XML olarak sonuç üreten fonksiyon

tcmb_evds <- function(veriseti, baslangic, bitis, anahtar) {
  adres = "https://evds2.tcmb.gov.tr/service/evds/"
  seri = paste("series=", veriseti, sep="")
  tarihler = paste("&startDate=",baslangic,"&endDate=",bitis, sep="")
  tamamlayici = paste("&type=xml&key=", anahtar, sep="")
  veriadresi = paste(adres, seri, tarihler, tamamlayici, sep="")
  xmlveri <- getURL(veriadresi, .opts = list(ssl.verifypeer=FALSE))
  return(xmlveri)
}

xmlveriler <- tcmb_evds("TP.DK.USD.A", "1-1-2010", "29-10-2020", anahtar)
xmlveriler

df <- xmlToDataFrame(xmlveriler)
kayitsayisi <- nrow(df)
df <- df[2:kayitsayisi,]
df <- df[2:3]
df <- df[df$TP_DK_USD_A != "", ]
str(df)

df$Tarih <- strptime(df$Tarih, "%d-%m-%Y")
df$TP_DK_USD_A <- as.numeric(as.character.numeric_version(df$TP_DK_USD_A))

plot(y=df$TP_DK_USD_A, x=df$Tarih, type = "l", col="red", xlab = "Tarih", ylab = "TL/$")






