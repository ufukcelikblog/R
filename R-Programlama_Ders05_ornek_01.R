data("marketing", package = "datarium")
head(marketing)

library(ggplot2)
ggplot(marketing, aes(x=youtube, y=sales)) +
  geom_point() +
  stat_smooth(method = "lm")

model <- lm(sales ~ youtube, data = marketing)
model

# sales = 8.43911 + 0.04754 * youtube
summary(model)
confint(model)

sigma(model)
sigma(model) * 100 / mean(marketing$sales)

par(mfrow=c(2,2))
plot(model)
par(mfrow=c(1,1))

model2 <- lm(sales ~ youtube+facebook+newspaper, data=marketing)
summary(model2)
# sales = 3.52667 + 0.045765*youtube + 0.18853*facebook + -0.001037*newspaper

plot(marketing$sales, ylab="Satýþ", xlab="index", col="grey", type="l")
abline(model2, col="red")

data <- marketing$youtube[1:3]
predict(model, newdata = data.frame(youtube=data))
marketing$sales[1:3]

plot(marketing$sales, ylab="Satýþ", xlab="index", col="grey", type="l")
abline(model, col="red")
lines(fitted(model), col="blue", type="l")
abline(model2, col="green")
lines(fitted(model2), col="yellow")


plot(resid(model), col="blue", type="l")
lines(resid(model2), col="red", type="l")
AIC(model)
AIC(model2)
