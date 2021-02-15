# Momentum
mymom <- function (price,n) {
  mom <- rep(0,n)
  N <- nrow(price)
  Lprice <- Lag(price,n)
  for (i in (n+1):N){
    mom[i]<-price[i]-Lprice[i]
  }
  mom <- reclass(mom,price)
  return(mom)
}

M <- mymom(Cl(AAPL), n=2)

M <- momentum(Cl(AAPL), n=2)

chartSeries(AAPL,
            subset='2007-05::2009-01',
            theme=chartTheme('white'))
addMomentum(n=5)
