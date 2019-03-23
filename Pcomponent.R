##Correlacion de variables##
cor(datos)

round(cor(datos), 3)

guardaResultados <- cor(datos)
guardaResultados <- round(cor(datos))

datos.pca<-prcomp(datos, scale=TRUE)
guardaResultados <- datos.pca

summary(datos.pca)
media<-datos.pca$center
desvstandar<-datos.pca$scale

cor(compra, sexo)

sexo<-datos$sexo
compra<-datos$compra
cor(compra, sexo)


plot(compra, sexo)

