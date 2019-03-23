#Se crean variables dummies
#se reconoce como modelo base; sexo:femenino;retro:bueno;conocimiento:bueno
sexo<-factor(datos$sexo)
is.factor(sexo)
conocimiento<-factor(datos$conocimiento)
is.factor(conocimiento)
retro<-factor(datos$retro)
is.factor(retro)


###########Generar modelo full######################

modelofull<-lm(datos$compra~datos$edad+sexo+datos$comuna+datos$buscador+datos$retro1+datos$busqueda+datos$cono1+datos$cono2+datos$cono3+datos$fiamarc+datos$retro2+datos$retro3+datos$retro4+datos$tipocompra+datos$estructuraweb)
summary(modelofull)


