# Listeler i�inde say�lar, dizgeler, vekt�rler ve ba�ka listeler 
# gibi farkl� tipte elemanlar i�eren R nesneleridir.

liste1 <- list("K�rm�z�", "Ye�il", 34, c(2:5), TRUE, 56.49)
print(liste1)
print(liste1[4])


liste2 <- list(c("Ekim","Kas�m","Aral�k"), c(100,120,115))
names(liste2) <- c("Son �eyrek", "Sat�� Rakamlar�")


list1 <- list(1,5,2,4,3)
list2 <-list(10,11,12,13,14)

v1<-unlist(list1)
v2<-unlist(list2)
v1 + v2
