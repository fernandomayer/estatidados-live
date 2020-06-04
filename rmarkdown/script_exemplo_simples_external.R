##======================================================================
## Script com os chunks do arquivo Rmd
##======================================================================

## ----- dados
(x <- rnorm(30))

## ----- teste
## Esse código não vai aparecer no documento
2 + 2
## Como ele não é executado pelo Rmd, então esse objeto _não_ irá
## substituir o x criado anteriormente
x <- 2

## ----- graf
hist(x)
