# matrix(veri, ka�_sat�r, ka�_s�tun, sat�ra_g�re, boyut_isimleri)
mat_1 <- matrix(c(4:15), nrow = 4, byrow = TRUE)
mat_2 <- matrix(c(4:15), nrow = 4, byrow = FALSE)

satirAd = c("2015", "2016", "2017", "2018")
s�tunAd = c("Ocak", "�ubat", "Mart")

mat_3 <- matrix(c(204:215), nrow=4, byrow = TRUE, 
                dimnames = list(satirAd, s�tunAd))

mat_1 + mat_2

mean(mat_1)
rowSums(mat_1)
colSums(mat_1)
