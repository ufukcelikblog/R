bitis <- 100
sayi <- 1
toplam <- 0

while(!(sayi>bitis)) { ### sayi biti�ten b�y�k de�ilse
  toplam <- toplam + sayi
  sayi <- sayi + 1
}
print(paste("TOplam =", toplam))
