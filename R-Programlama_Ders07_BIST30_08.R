xtsdiff1 <- diff(xts, differences=1)
tsdiff1 <- diff(ts, differences=1)

plot.xts(xtsdiff1, col = "blue")
adf.test(tsdiff1, alternative = "stationary", k = 0)

findfrequency(xts) # find dominant frequency of original time series
findfrequency(xtsdiff1) # find dominant frequency of differenced time series
