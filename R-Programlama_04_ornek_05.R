# veri çerçeveleri içinde "=" ile local (yerel) atama yapýlýr 

personel <- data.frame(
  isim = c("Ufuk", "Mehmet", "Ufuk", "Zeynep"),
  yas = c(44, 39, 42, 24),
  bolum = c("Muhasebe", "Ýmalat", "Depo", "Depo"),
  maas = c(3500,6200,5600, 4800),
  tarih = as.Date(c("2012-01-01", "2015-09-28", "", "2016-05-30")),
  stringsAsFactors = TRUE
)

str(personel)
summary(personel)

personel[2,3]
personel$isim[2]
personel[c(1,4), 5]

personel$isim[1] <- NA
personel$maas[1] <- NA
personel$tarih <-  NULL
personel[,1] <- NULL








