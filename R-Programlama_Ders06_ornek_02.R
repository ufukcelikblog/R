install.packages("xts")
library(xts)

dates<-as.Date(c("2016-01-01", "2016-01-02", "2016-01-03"))
prices <- c(1.1, 2.2, 3.3)

x <- xts(prices, order.by = dates)
x[1]
x

x['2016-01-02/2016-01-03']
first(x)
last(x)

time(x[1])
as.numeric(x[1])

lag1 <- lag(x, 1)

y <- c(1, 0, -1)
y <- reclass(y, x)

z <- cbind(x, y)
z  
  
  
  