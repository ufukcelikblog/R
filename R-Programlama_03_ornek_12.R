sayi <- 4567
b <- sayi
n <- 0

while(b > 0) {
  n <- n + 1  ### n = basamak sayısı
  b <- b %/% 10
}
print(paste(sayi, "sayısı", n, "basamaklıdır"))
