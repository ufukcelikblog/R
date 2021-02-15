# kendisine gönderilen sayýnýn ASAL olup olmadýðýný bulmak
AsalKontrol <- function(sayi) {
  asalDurum <- TRUE # baþlangýçta asal olduðunu kabul ediyorum
  for(x in 2:(sayi-1)) {
    if(sayi %% x == 0) {
      asalDurum <- FALSE
      break; # asal sayý deðildir. Döngüden çýkarýz
    }
  }
  if(asalDurum == TRUE) {
    print(paste(sayi, " ASAL"))
  } else {
    print(paste(sayi, " ASAL DEÐÝL"))
  }
}


AsalKontrol(19)
AsalKontrol(21)

for(k in 1:100) {
  AsalKontrol(k)
}




