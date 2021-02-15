# Listeler içinde sayýlar, dizgeler, vektörler ve baþka listeler 
# gibi farklý tipte elemanlar içeren R nesneleridir.

liste1 <- list("Kýrmýzý", "Yeþil", 34, c(2:5), TRUE, 56.49)
print(liste1)
print(liste1[4])


liste2 <- list(c("Ekim","Kasým","Aralýk"), c(100,120,115))
names(liste2) <- c("Son Çeyrek", "Satýþ Rakamlarý")


list1 <- list(1,5,2,4,3)
list2 <-list(10,11,12,13,14)

v1<-unlist(list1)
v2<-unlist(list2)
v1 + v2
