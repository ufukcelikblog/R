df <- data.frame(mtcars)
head(df)

x <- 1:5
y <- seq(5,1,-1)
z <- c(1,1,2,2,3)
df <- data.frame(x,y,z)

yeniDF <- df[order(df$y, df$z), ]

df1 <- data.frame(ID=c("a","b"), x=c(1,2))
df2 <- data.frame(ID=c("b","a"), y=c(3,4))
df3 <- merge(df1, df2, by="ID")

df4 <- cbind(df1, df2) 

df1<-data.frame(ID=c("a","b"), x=c(1,2), y=c(1,2))
df2<-data.frame(ID=c("c","d"), x=c(3,4), y=c(1,2))
df3<-data.frame(ID=c("e","f"), x=c(5,6), y=c(1,2))
df5 <- rbind(df1, df2, df3)

yeniDF <- df5[which(df5$y==1 & df5$x > 1), ]
yeniDF <- subset(df5, y==2 & x>1, select = c(y))


df <- data.frame(ID=c("a","b","a","b","a","b"), 
                 x=c(1,2,3,4,1,2), 
                 y=c(1,2,1,2,1,2))
yeniDF <- aggregate(df$x, by=data.frame(df$ID), mean)
yeniDF <- by(df$x, df$ID, mean)
yeniDF

cdf <- cbind(yeniDF)



