Filter <- function(price){
  r <- price/lag(price,1)
  return(r)
}
filter <- Filter(Cl(AAPL))
chartSeries(AAPL,
            subset='2007-05::2009-01',
            theme=chartTheme('white'))
addTA(filter, col="red")

esma <- 0.3*SMA(Cl(AAPL),30) + 0.7*EMA(Cl(AAPL),40)
chartSeries(AAPL,
            subset='2007-05::2009-01',
            theme=chartTheme('white'))
addTA(esma, on=1, col="red")
