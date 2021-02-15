install.packages("quantmod")
library(quantmod)

getSymbols("AAPL")
Open <- Op(AAPL)   #Open Price
High <- Hi(AAPL)    # High price
Low <- Lo(AAPL)  # Low price
Close<- Cl(AAPL)   #Close Price
Volume <- Vo(AAPL)   #Volume
AdjClose <- Ad(AAPL) # Adjusted close

getSymbols("AAPL", from='2000-01-01',to='2015-12-31')

getSymbols("AAPL")
AAPL <- xts::last(AAPL,'1 year')

getSymbols(c("AAPL","GOOG"))

WeekVoYa<- apply.weekly(Vo(AAPL), sum)
MonthVoYa <- apply.monthly(Vo(AAPL), sum)
QuarterVoYa <- apply.quarterly(Vo(AAPL), sum)
