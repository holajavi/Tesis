## Principal Component
## Para reconocer la media de la matriz de datos
promedioapc<-apply(X = datosfinal, MARGIN = 2, FUN = mean)
## Para reconocer la varianza de datos 
varianzaapc<-apply(X = datosfinal, MARGIN = 2, FUN = var)

## Por defecto, la funcion "prcomp" centra las variables para que tengan media cero, pero si además se quiere que la desviacion estandar
## sea de 1, hay que indicar    scale = TRUE
datosapc<-prcomp(datosfinal, scale=TRUE)
## Entrega la media de los datos previos a estandarizacion
datosapc$center
# Entrega la desviación estándar de los datos previos a estandarizacion
datosapc$scale
## Entrega el valor de los loadings en base a (n-1,p) en este caso, matriz de (546,7)
datosapc$rotation
## Entrega el resultado de cada componente principal para cada individuo de la muestra
datosapc$x
## Entrega los valores de los 6 primeros individuos
head(datosapc$x)
## Entrega las dimensiones de la matriz datos.apc
dim(datosapc$x)
## Genera un grafico bidimensional de las dos primeras componentes, se establece el argumento scale=0 para que las flechas estén en la misma escala que las componentes
biplot(x = datosapc, scale = 0, cex = 0.6, col = c("blue4", "brown3"))
## La imagen especular, cuya interpretacion es equivalente, se obtiene invirtiendo el signo de los loadings y los principal component scores
datosapc$rotation <- -datosapc$rotation
datosapc$x <- -datosapc$x
biplot(x = datosapc, scale = 0, cex = 0.6, col = c("blue4", "brown3"))
## Se comienza a observar el comportamiento de las varianzas de los datos,apc
library(ggplot2)
datosapc$sdev^2
## Se saca la proporcion de la varianza 
propvarianza<-datosapc$sdev^2 / sum(datosapc$sdev^2)
propvarianza
## Graficar la proporcion de la varianza explicada vs las componentes principales
ggplot(data = data.frame(propvarianza, pc = 1:7), aes(x = pc, y = propvarianza)) + geom_col(width = 0.5) + scale_y_continuous(limits = c(0,0.3)) + theme_bw() + labs(x = "Componente principal", y = "Prop. de varianza explicada")
## Calcular la proporcion de la varianza explicada acumulada
propvarianzaacum<-cumsum(propvarianza)
propvarianzaacum
## Graficar la proporcion de la varianza explicada acumulada vs las componentes principales
ggplot(data = data.frame(propvarianzaacum, pc = 1:7), aes(x = pc, y = propvarianzaacum, group = 1)) +geom_point() + geom_line() + theme_bw() + labs(x = "Componente principal",y = "Prop. varianza explicada acumulada")

promedioapc<-apply(X = datosfinal, MARGIN = 2, FUN = mean)
## Para reconocer la varianza de datos 
varianzaapc<-apply(X = datosfinal, MARGIN = 2, FUN = var)

## Por defecto, la funcion "prcomp" centra las variables para que tengan media cero, pero si además se quiere que la desviacion estandar
## sea de 1, hay que indicar    scale = TRUE
datosapc<-prcomp(datosfinal, scale=TRUE)
## Entrega la media de los datos previos a estandarizacion
datosapc$center
# Entrega la desviación estándar de los datos previos a estandarizacion
datosapc$scale
## Entrega el valor de los loadings en base a (n-1,p) en este caso, matriz de (546,7)

