Asal <- function(sayi) {
  sonuc <- TRUE
  for(k in 2:(sayi-1)) {
    if(sayi%%k==0){
      sonuc = FALSE
      break
    }
  }
  return(sonuc)
}

Asal(5)
Asal(117)

for(x in 1:1000) {
  if(Asal(x)) {
    print(x)
  }
}
