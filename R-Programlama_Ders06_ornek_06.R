install.packages("TTR")
library(TTR)

# Simple Moving Average (SMA)
mySMA <- function(price, n) {
  sma <- c()
  sma[1:(n-1)] <- NA
  for(i in n:length(price)) {
    sma[i] <- mean(price[i-n+1]: i)
  }
  sma <- reclass(sma, price)
  return(sma)
}

library(quantmod)
getSymbols("AAPL")

appleVeri <- mySMA(Cl(AAPL), n=20)
tail(appleVeri, 6)

appleSMA20 <- TTR::SMA(Cl(AAPL), n=20)

chartSeries(AAPL, subset='2007-05::2009-01', theme=chartTheme('white'))
addSMA(n=30, on=1, col="blue")
addSMA(n=200, on=1, col="red")



