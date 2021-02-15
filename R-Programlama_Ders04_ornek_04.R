# parametreli bir fonksiyon geriye deðer döndürmeyen
alan <- function(yaricap) {
  print(paste("Alan: ",(pi*yaricap*yaricap), sep = " "))
}

# parametreli bir fonksiyon geriye deðer döndüren
cevre <- function(yaricap) {
  return(2*pi*yaricap)
}

alan(10)
alan(20)
hesap <- alan(100)
sonuc <- cevre(5)
