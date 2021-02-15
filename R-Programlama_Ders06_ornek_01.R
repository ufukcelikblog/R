price <- c(2,3,7,8,9,12,8,7)
price <- ts(price) # ts time-series fonksiyonu
price

df <- data.frame(a = c(3,4,5),
                 b = c(1,2,4),
                 d = c(1,2,3))
df <- ts(df)
df
