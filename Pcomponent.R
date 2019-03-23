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
plot(sexo, compra)

barplot(compra, sexo)

round(cor(datos), 4)


sexo<-factor(datos$sexo)
is.factor(sexo)
comuna <-factor(datos$comuna)
is.factor(comuna)

##MODELO CON TODAS LAS VARIBALES###
modelofull<-lm(datos$compra~datos$edad+datos$sexo+datos$comuna+datos$buscador+datos$retro1+datos$busqueda+datos$cono1+datos$cono2+datos$cono3+datos$fiamarc+datos$retro2+datos$retro3+datos$retro4+datos$tipocompra+datos$estructuraweb)
summary(modelofull)

##SACANDO VARIABLE EDAD##
modelofull<-lm(datos$compra~datos$sexo+datos$comuna+datos$buscador+datos$retro1+datos$busqueda+datos$cono1+datos$cono2+datos$cono3+datos$fiamarc+datos$retro2+datos$retro3+datos$retro4+datos$tipocompra+datos$estructuraweb)
summary(modelofull)

##SACANDO VARIABLE COMUNA##
modelofull<-lm(datos$compra~datos$sexo+datos$buscador+datos$retro1+datos$busqueda+datos$cono1+datos$cono2+datos$cono3+datos$fiamarc+datos$retro2+datos$retro3+datos$retro4+datos$tipocompra+datos$estructuraweb)
summary(modelofull)

##SACANDO VARIBLE BUSCADOR##
modelofull<-lm(datos$compra~datos$sexo+datos$retro1+datos$busqueda+datos$cono1+datos$cono2+datos$cono3+datos$fiamarc+datos$retro2+datos$retro3+datos$retro4+datos$tipocompra+datos$estructuraweb)
summary(modelofull)

##SACANDO VARIABLE CONO3##
modelofull<-lm(datos$compra~datos$sexo+datos$retro1+datos$busqueda+datos$cono1+datos$cono2+datos$fiamarc+datos$retro2+datos$retro3+datos$retro4+datos$tipocompra+datos$estructuraweb)
summary(modelofull)

##SACANDO VARIABLE FIAMARCA##
modelofull<-lm(datos$compra~datos$sexo+datos$retro1+datos$busqueda+datos$cono1+datos$cono2+datos$retro2+datos$retro3+datos$retro4+datos$tipocompra+datos$estructuraweb)
summary(modelofull)

##SACANDO VARIABLE RETRO2##
modelofull<-lm(datos$compra~datos$sexo+datos$retro1+datos$busqueda+datos$cono1+datos$cono2+datos$retro3+datos$retro4+datos$tipocompra+datos$estructuraweb)
summary(modelofull)

##SACANDO VARIABLE RETRO3##
modelofull<-lm(datos$compra~datos$sexo+datos$retro1+datos$busqueda+datos$cono1+datos$cono2+datos$retro4+datos$tipocompra+datos$estructuraweb)
summary(modelofull)

##SACANDO VARIABLE RETRO4##
modelofull<-lm(datos$compra~datos$sexo+datos$retro1+datos$busqueda+datos$cono1+datos$cono2+datos$tipocompra+datos$estructuraweb)
summary(modelofull)

##SACANDO VARIABLE ESTRUCTURAWEB##
modelofull<-lm(datos$compra~datos$sexo+datos$busqueda+datos$cono1+datos$cono2+datos$tipocompra)
summary(modelofull)
