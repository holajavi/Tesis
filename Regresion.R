#Se crean variables dummies
sexo<-factor(datos$sexo)
is.factor(sexo)
comuna <-factor(datos$comuna)
is.factor(comuna)

##MODELO CON TODAS LAS VARIBALES###
modelofull<-lm(datos$compra~datos$edad+sexo+datos$comuna+datos$buscador+datos$retro1+datos$busqueda+datos$cono1+datos$cono2+datos$cono3+datos$fiamarc+datos$retro2+datos$retro3+datos$retro4+datos$tipocompra+datos$estructuraweb)
summary(modelofull)

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



