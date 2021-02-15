tsarima240 <- auto.arima(head(xts, -240), 
                         max.p = 3, 
                         max.q = 3, 
                         max.d = 3) # son 240 günlük seriyi test için ayırdık
print(tsarima240)
autoplot(tsarima240)

tsarima120 <- auto.arima(head(xts, -120), max.p = 3, max.q = 3, max.d = 3) #120
print(tsarima120)
autoplot(tsarima120)

tsarima60 <- auto.arima(head(xts, -60), max.p = 3, max.q = 3, max.d = 3) #60
print(tsarima60)
autoplot(tsarima60)

tsarima30 <- auto.arima(head(xts, -30), max.p = 3, max.q = 3, max.d = 3) #30
print(tsarima30)
autoplot(tsarima30)

tsarima7 <- auto.arima(head(xts, -7), max.p = 3, max.q = 3, max.d = 3)   #7
print(tsarima7)
autoplot(tsarima7)
