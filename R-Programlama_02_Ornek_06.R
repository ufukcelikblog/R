# Asal Sayý bulmak
sayi <- 8
bolen <- 2
asal <- TRUE

while(bolen %in% c(2:sayi-1)) {
  kalan <- sayi %% bolen
  if(kalan == 0) {
    asal <- FALSE
  }
  print(paste("bölen=",bolen,"kalan=",kalan,"asal=",asal,sep="  "))
  bolen <- bolen + 1
}
if(asal) {
  print("sayý ASAL")
} else {
  "sayý ASAL DEÐÝLDÝR"
}
