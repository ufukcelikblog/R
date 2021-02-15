library(RCurl) # EVDS'ye ba?lant? i?in
library(XML) # XML veri kullan?m? i?in
library(plyr) # XML veriyi data.frame'e ?evirmek i?in

# evds sisteminden ald???m?z API anahtar?n? buraya yaz?yoruz
anahtar <- "API ANAHTAR YAZILACAK"

# veriseti ile verilen verinin, baslang?? ve biti? tarihleri aras?n?
# anahtar=API Anahtar?n?z olacak ?ekilde girince 
# XML olarak sonu? ?reten fonksiyon

tcmb_evds <- function(veriseti, baslangic, bitis, anahtar) {
  adres = "https://evds2.tcmb.gov.tr/service/evds/"
  seri = paste("series=", veriseti, sep="")
  tarihler = paste("&startDate=",baslangic,"&endDate=",bitis, sep="")
  tamamlayici = paste("&type=xml&key=", anahtar, sep="")
  veriadresi = paste(adres, seri, tarihler, tamamlayici, sep="")
  xmlveri <- getURL(veriadresi, .opts = list(ssl.verifypeer=FALSE))
  df <- xmlToDataFrame(xmlveri)
  df <- df[2:nrow(df),]
  df <- df[,2:3]
  df <- df[df[,2] != "", ]
  df$Tarih <- strptime(df$Tarih, "%d-%m-%Y")
  df[,2] <- as.numeric(as.character.numeric_version(df[,2]))
  return(df)
}

dolar <- tcmb_evds("TP.DK.USD.A", "1-1-2005", "29-10-2020", anahtar)
saveRDS(dolar, file = "dolar.RDS")
