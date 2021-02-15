# Bolinger Band
myBBands <- function (price,n,sd){
  mavg <- SMA(price,n)
  sdev <- rep(0,n)
  N <- nrow(price)
  for (i in (n+1):N){
    sdev[i]<- sd(price[(i-n+1):i])
  }
  up <- mavg + sd*sdev
  dn <- mavg - sd*sdev
  pctB <- (price - dn)/(up - dn)
  output <- cbind(dn, mavg, up, pctB)
  colnames(output) <- c("dn", "mavg", "up", "pctB")
  return(output)
}

library(TTR)

library(quantmod)
getSymbols("AAPL")

bb <-myBBands(Cl(AAPL),n=20,sd=2)

bb <-BBands(Cl(AAPL),n=20, sd=2)

chartSeries(AAPL,
            subset='2007-05::2009-01',
            theme=chartTheme('white'))
addBBands(n=20,sd=2)

