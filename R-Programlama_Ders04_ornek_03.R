a <- 5:10
uzunluk <- length(a)
# serinin son �� eleman�n� g�ster
for(x in 2:0) {
  print(a[uzunluk-x])
}

head(a, 2) # serinin ba�tan 2 eleman�
tail(a, 2) # serinin sondan 2 eleman�
