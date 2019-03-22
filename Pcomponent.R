attach(datos)
##preprocesamiento de datos##

boxplot()
hist()
summary()
pairs()

##Correlacion de variables##
cor(datos)

round(cor(datos), 3)

guardaResultados <- cor(datos)
guardaResultados <- round(cor(datos))

datos.pca<-prcomp(datos, scale=TRUE)
guardaResultados <- datos.pca
