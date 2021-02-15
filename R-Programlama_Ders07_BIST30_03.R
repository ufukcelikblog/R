# Bazý tek deðiþkenli daðýlýmlara bakalým
options(repr.plot.width=12, repr.plot.height=12) 
p1 = ggplot(s_data, aes(Open)) + 
  geom_histogram(bins = 10, aes(y = ..density..), 
                 col = "red", fill = "red", alpha = 0.3) + geom_density()# + xlim(c(0, 1000))
p2 = ggplot(s_data, aes(High)) + 
  geom_histogram(bins = 10, aes(y = ..density..), 
                 col = "red", fill = "red", alpha = 0.3) + geom_density()# + xlim(c(0, 1000))
p3 = ggplot(s_data, aes(Low)) + 
  geom_histogram(bins = 10, aes(y = ..density..), 
                 col = "red", fill = "red", alpha = 0.3) + geom_density()# + xlim(c(0, 1000))
p4 = ggplot(s_data, aes(Close)) + 
  geom_histogram(bins = 10, aes(y = ..density..), 
                 col = "red", fill = "red", alpha = 0.3) + geom_density()# + xlim(c(0, 1000))
grid.arrange(p1,p2,p3,p4, nrow=2,ncol=2)
