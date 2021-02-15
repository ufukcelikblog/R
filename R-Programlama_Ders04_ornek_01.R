sayi <- 1658
bolum <- sayi
basamak <- 0

while(bolum > 0) {
  basamak <- basamak + 1
  bolum <- bolum %/% 10
  print(paste("Basamak:",basamak,"Bölüm:",bolum,sep = " "))
}
