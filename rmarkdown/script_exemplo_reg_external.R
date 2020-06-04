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
