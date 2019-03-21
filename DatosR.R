#Se crean variables dummies
#se reconoce como modelo base; sexo:femenino;retro:bueno;conocimiento:bueno
sexo<-factor(datos$sexo)
is.factor(sexo)
conocimiento<-factor(datos$conocimiento)
is.factor(conocimiento)
retro<-factor(datos$retro)
is.factor(retro)

###########Generar modelo full######################

modelofull<-lm(datos$compra~datos$edad++sexo+datos$motor+conocimiento+datos$busquedas+retro+datos$fiamarca+datos$tipocompra+datos$estructuraweb)
summary(modelofull)
