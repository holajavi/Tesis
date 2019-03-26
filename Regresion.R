compra<-datos$compra
edad<-datos$edad
sexo<-datos$sexo
comuna<-datos$comuna
buscador<-datos$buscador
cono1<-datos$cono1
cono2<-datos$cono2
cono3<-datos$cono3
busqueda<-datos$busqueda
retro1<-datos$retro1
retro2<-datos$retro2
retro3<-datos$retro3
retro4<-datos$retro4
fiamarc<-datos$fiamarc
tipocompra<-datos$tipocompra
estructuraweb<-datos$estructuraweb

rm(sexo)
sexo<-factor(datos$sexo)
is.factor(sexo)
rm(buscador)
buscador<-factor(datos$buscador)
is.factor(buscador)


## Datos de correlacion
round(cor(datos),4)
cor(datos)


## Regresion lineal
modelocompleto<-lm(compra~edad+sexo+comuna+retro1+buscador+cono1+cono2+cono3+busqueda+retro2+retro3+retro4+fiamarc+tipocompra+estructuraweb)
modelosincomuna<-lm(compra~edad+sexo+retro1+buscador+cono1+cono2+cono3+busqueda+retro2+retro3+retro4+fiamarc+tipocompra+estructuraweb)
modelocompleto

summary(modelocompleto)

## Se entrega R cuadrado ajustado
summary(modelocompleto)
## Entre la matriz de correlacion 
round(cor(datos), 4)
##Residuos
residuos<-rstandard(modelocompleto)
par(mfrow=c(1,3))  ## Divide en 3 la parte de graficos
hist(residuos)
boxplot(residuos)
## La varianza de los errores constante
plot(fitted.values(modelocompleto),rstandard(modelocompleto), xlab = "Valores ajustados", ylab = "Residuos estandarizados")
abline(h=0)
## comprax<-which(colnames(datos)=="comprax")

##modelo final##
modelofinal<-lm(compra~edad+sexo+cono1+cono2+busqueda+tipocompra)
modelofinal
summary(modelofinal)


datosfinal
plot(datosfinal)

cov(datosfinal)

library(fmsb)
VIF(modelofinal)
vif
library(car)
VIF(modelofinal)
vif(modelofinal)
VIF(modelofinal)

vif(sexo)
VIF(sexo)

Anova(modelofinal)

hist(datosfinal)
plot(datosfinal)
cov(datosfinal)

residuos<-resid(modelofinal)
ks.test(residuos,"pnorm")

qqnorm(residuos)

durbinWatsonTest(modelofinal)

influence.measures(modelofinal)
