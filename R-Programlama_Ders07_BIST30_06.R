xts = xts_list[['BIMAS']]
ts = ts_list[['BIMAS']]
adf.test(xts, alternative = "stationary", k = 0)
