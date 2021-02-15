# kendisine gönderilen bir sayının
# tek mi çift mi olduğunu gösteren fonksiyon
TekCift <- function(sayi) {
  mod <- sayi %% 2
  if(mod == 0) {
    print(paste(sayi, "sayısı ÇİFT"))
  } else {
    print(paste(sayi, "sayısı TEK"))
  }
}

TekCift(18)

x <- readline(prompt = "Bir sayı giriniz = ")
x <- as.integer(x) # tamsayıya dönüştürme
TekCift(x)

TekCift(as.integer(readline(prompt = "sayı giriniz -> ")))



