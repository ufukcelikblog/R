sayi <- 7
kalan <- sayi %% 2
if(kalan == 0) {
  print("ÇİFT")
} else {
  print("TEK")
}

birler <- sayi %% 10
if(birler==0 || birler==2 || birler==4 || birler==6 || birler==8) {
  print("ÇİFT")
} else {
  print("TEK")
}

ciftler <- c(0, 2, 4, 6, 8)
if(birler %in% ciftler) {
  print("ÇİFT")
} else {
  print("TEK")
}

bolum <- sayi %/% 2   # bölümden tamsayı kısmını alıyoruz
carp = bolum * 2      # sonucu tekrar 2 ile çarpıyoruz
if(sayi == carp) {    # yeni değer sayıya eşit mi?
  print("ÇİFT")
} else {
  print("TEK")
}

sayi = 7
switch(sayi%%2+1, print("ÇİFT"), print("TEK"))






