sayi <- 297
asal <- TRUE
bolen <- 2
repeat {
  if(sayi %% bolen == 0) {
    asal <- FALSE
    break
  }
  bolen <- bolen + 1
  if(bolen == sayi) {
    break
  }
}
print(asal)
