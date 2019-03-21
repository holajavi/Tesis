lm()
## Leer base de datos existente en archivo de RESULTADOS ENCUESTA FINAL 
transformación = read.table(file.choose(), header = TRUE, dec = ",")

## names entrega los nombres de las variables. 
names(datos)

## esto grafica luego la variable $Value y $Time con escala de 0 a 30mil
plot(datos$Value/1000 ~ datos$Time, type = "l", ylim = c(0,30000), ylab="MWh")

## Modelo clasico de serie de tiempo
## mt --> tedencia
## st --> patro estacional
## xt -->componente estocástica (ojala sea ruido).
## yt = mt + st + xt 
Modelo = lm(Value ~ Time + Month, data = datos)
## para ver el modelo escribimos la variable.
Modelo
## Graficaremos los datos existentes versus el modelo
## datos reales vs ajustes
## como ya tenemos el grafico creado, solo pegaremos la linea de los datos ajustados.
lines(Modelo$fitted.values/1000 ~ datos$Time, col = "green")
summary(Modelo)
Xt= Modelo$residuals
## Funcion acf entrega autocorrelacion de los datos. 
## 
Xt= Modelo$residuals
par(mfrow = c(2,1))
acf(datos$Value, lag.max=60)
acf(Xt, lag.max = 60)
## El grafico de arriba puso una dependencia fuerte. 
## Son culpa del efecto tendencia y efecto estacional. 
## Al limpiar estos efectos, nos quedamos con el error. 
## Sin embargo, aun persiste la estacionalidad y tendencia. 
##
## Entrenando el ojo para el ACF teorico. 
## AR(1): y[t] = phi*y[t-1]+z[t]
## Modelo phi:
phi=0.7
ARMA1=ARMAacf(ar=phi, lag.max = 30)
plot(ARMA1, type = "h")
phi=-0.7
ARMA1=ARMAacf(ar=phi, lag.max = 30)
plot(ARMA1, type = "h")

## Entrenando el ojo para el ACF teorico. 
## MA(1): y[t] = theta*y[t-1]+z[t]
## Modelo:
theta=0.7
ARMA1=ARMAacf(ma=theta, lag.max = 30)
plot(ARMA1, type = "h")
theta=-0.7
ARMA1=ARMAacf(ma=theta, lag.max = 30)
plot(ARMA1, type = "h")


## ARMA (1,1) VS AR(1)
par(mfrow = c(2,1))
phi = 0.7
theta = 0.2
ARMA1=ARMAacf(ar=phi, ma= theta , lag.max = 30)
plot(ARMA1, type = "h")

##phi=0.7
ARMA2=ARMAacf(ar=phi, lag.max = 30)
plot(ARMA2, type = "h")

## autocorrelacion parcial: 
## este grafico entrega lo siguiente: 



