##======================================================================
## Script com os chunks do arquivo Rmd
##======================================================================

## ----- dados
## Carrega o conjunto de dados
data(cars)

## ----- resumo
## Resumo dos dados
knitr::kable(summary(cars))

## ----- fit
## Ajuste do modelo
mod <- lm(dist ~ speed, data = cars)

## ----- fitres
## Resumo do modelo
summary(mod)

## ----- residuals
par(mfrow = c(2, 2))
plot(mod)
par(mfrow = c(1,1))

## ----- pred
## Intervalo de valores para predição
pred <- data.frame(speed = seq(4, 25, by = 0.5))
## Valores preditos
ypred <- predict(mod, newdata = pred, interval = "confidence")
## Inclui valores preditos no data frame
pred <- cbind(pred, ypred)

## ----- predfig
## Gráfico de dispersão
plot(dist ~ speed, data = cars,
     xlab = "Velocidade ao acionar os freios",
     ylab = "Distância para parada completa")
## Intervalo de predição
with(pred,
     matlines(x = speed, y = cbind(fit, lwr, upr),
              lty = c(1, 2, 2), col = 1))
