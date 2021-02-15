# Moving average convergence/divergence (MACD) 

myMACD <- function (price,S,L,K){
  MACD <- EMA(price,S) - EMA(price,L)
  signal <- EMA(MACD,K)
  output <- cbind(MACD,signal)
  colnames(output) <- c("MACD","signal")
  return(output)
}

macd <- myMACD(Cl(AAPL), 12, 26, 9)

macd <- TTR::MACD(Cl(AAPL), nFast=12, nSlow=26, 
                  nSig=9, percent = FALSE)
chartSeries(AAPL,
            subset='2007-05::2008-01',
            theme=chartTheme('white'))
addMACD(fast=12,slow=26,signal=9,type="EMA")
