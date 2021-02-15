a=c(5,2,10,1,3,12,3,9,4,11)
a
a_1=c(NA,a[1:9])
a_1
a_2=c(NA,NA,a[1:8])
a_2
rep(NA,3)
a_4=c(rep(NA,4), a[1:(length(a)-4)])
a_4

gecik <- function(x, k) {
  c(rep(NA,k), x[1:(length(x)-k)])
}
gecik(a,2)
gecik(a,4)

library(readxl)
Bitcoin <- read_excel("Bitcoin.xlsx", 
                      col_types = c("date", "numeric", "numeric", "numeric", "numeric"))
Bitcoin <- Bitcoin[order(Bitcoin$Tarih, decreasing = FALSE),]
kapanis <- Bitcoin$Þimdi

m1 <- lm(kapanis ~ gecik(kapanis,1) + gecik(kapanis,7) + gecik(kapanis,21) +
           gecik(kapanis,28) + gecik(kapanis,364) + gecik(kapanis,365))

summary(m1)
plot(kapanis, ylab="$", xlab="Zaman", 
     main="Bitcoin Regresyon", col="grey", type="l")
abline(m1, col="red")
lines(fitted(m1), col="blue", type="l")
AIC(m1)

m1f <- rep(0, 731)
lng <- length(kapanis)
temp = kapanis[(lng-365):lng]
m1f[1:366] <- temp[1:366]

for(gun in 1:365) {
  tahmin = predict(m1, newdata = data.frame(kapanis=m1f[gun:(gun+365)]))
  m1f[gun+366] <- tahmin[366]
}
tahminDF <- data.frame(index=c(1:length(m1f)), fiyat=m1f)

library(ggplot2)
library(ggforce)

ggplot(data=tahminDF, aes(x=index, y=fiyat)) +
  geom_line() +
  facet_zoom(x=index>366)
  




