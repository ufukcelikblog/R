tsforecasts120 <- forecast(tsarima120, h = 120) # forecast the next 120 time series
tsforecasts60 <- forecast(tsarima60, h = 60) # forecast the next 60 time series
tsforecasts30 <- forecast(tsarima30, h = 30) # forecast the next 30 time series
tsforecasts7 <- forecast(tsarima7, h = 7) # forecast the next 7 time series

autoplot(tsforecasts120)
accuracy(tsforecasts120, head(tail(xts, 120), 120))
accuracy(tsforecasts120, head(tail(xts, 120), 60))
accuracy(tsforecasts120, head(tail(xts, 120), 30))
accuracy(tsforecasts120, head(tail(xts, 120), 7))

autoplot(tsforecasts60)
accuracy(tsforecasts60, head(tail(xts, 60), 60))
accuracy(tsforecasts60, head(tail(xts, 60), 30))
accuracy(tsforecasts60, head(tail(xts, 60), 7))

autoplot(tsforecasts30)
accuracy(tsforecasts30, head(tail(xts, 30), 30))
accuracy(tsforecasts30, head(tail(xts, 30), 7))

autoplot(tsforecasts7)
accuracy(tsforecasts7, head(tail(xts, 7), 7))
