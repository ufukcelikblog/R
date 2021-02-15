# bir serinin toplamý
a <- 5:10
toplam <- 0

for(x in a) {
  toplam <- toplam + x
  print(paste("X=",x,"Toplam=",toplam,sep = " "))
}
