sayi <- 7
kalan <- sayi %% 2
if(kalan == 0) {
  print("��FT")
} else {
  print("TEK")
}

birler <- sayi %% 10
if(birler==0 || birler==2 || birler==4 || birler==6 || birler==8) {
  print("��FT")
} else {
  print("TEK")
}

ciftler <- c(0, 2, 4, 6, 8)
if(birler %in% ciftler) {
  print("��FT")
} else {
  print("TEK")
}

bolum <- sayi %/% 2   # b�l�mden tamsay� k�sm�n� al�yoruz
carp = bolum * 2      # sonucu tekrar 2 ile �arp�yoruz
if(sayi == carp) {    # yeni de�er say�ya e�it mi?
  print("��FT")
} else {
  print("TEK")
}

sayi = 7
switch(sayi%%2+1, print("��FT"), print("TEK"))






