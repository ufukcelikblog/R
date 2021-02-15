# Relative Strength Index (RSI)
myRSI <- function (price,n){
  N <- length(price)
  U <- rep(0,N)
  D <- rep(0,N)
  rsi <- rep(NA,N)
  Lprice <- Lag(price,1)
  for (i in 2:N){
    if (price[i]>=Lprice[i]){
      U[i] <- price[i]- Lprice[i]
    } else{
      D[i] <- Lprice[i]- price[i]
    }
    if (i>n){
      AvgUp <- mean(U[(i-n+1):i])
      AvgDn <- mean(D[(i-n+1):i])
      rsi[i] <- AvgUp/(AvgUp+AvgDn)*100 
    }
  }
  rsi <- reclass(rsi, price)
  return(rsi)
}

rsi <- myRSI(Cl(AAPL), n=14)
tail(rsi, n=3)

rsi <- TTR::RSI(Cl(AAPL), SMA, n=14)
tail(rsi,n=3)

chartSeries(AAPL,
            subset='2007-05::2009-01',
            theme=chartTheme('white'))
addRSI(n=14,maType="EMA")


