# Rate of Change (ROC)
myROC <- function (price,n){
  roc <- rep(0,n)
  N <- nrow(price)
  Lprice <- Lag(price,n)
  for (i in (n+1):N){
    roc[i]<-(price[i]-Lprice[i])/Lprice[i]
  }
  roc <- reclass(roc,price)
  return(roc)
}
roc <- myROC(Cl(AAPL),n=2)


library(TTR)
roc <- TTR::ROC(Cl(AAPL),type="discrete",n=2)

chartSeries(AAPL,
            subset='2007-05::2008-01',
            theme=chartTheme('white'))
addROC(n=2)
