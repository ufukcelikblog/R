print('tsforecasts120')
ggplot(data.frame(residuals = tsforecasts120$residuals), aes(residuals)) + 
  geom_histogram(bins = 50, aes(y = ..density..), 
                 col = "red", fill = "red", alpha = 0.3) + 
  geom_density()# make a histogram
checkresiduals(tsforecasts120)

print('tsforecasts60')
ggplot(data.frame(residuals = tsforecasts60$residuals), aes(residuals)) + geom_histogram(bins = 50, aes(y = ..density..), col = "red", fill = "red", alpha = 0.3) + geom_density()# make a histogram
checkresiduals(tsforecasts60)

print('tsforecasts30')
ggplot(data.frame(residuals = tsforecasts30$residuals), aes(residuals)) + geom_histogram(bins = 50, aes(y = ..density..), col = "red", fill = "red", alpha = 0.3) + geom_density()# make a histogram
checkresiduals(tsforecasts30)

print('tsforecasts7')
ggplot(data.frame(residuals = tsforecasts7$residuals), aes(residuals)) + geom_histogram(bins = 50, aes(y = ..density..), col = "red", fill = "red", alpha = 0.3) + geom_density()# make a histogram
checkresiduals(tsforecasts7)
