##======================================================================
## Importação e configuração dos dados do Gapminder
##======================================================================

##----------------------------------------------------------------------
## Importar os dados do Gapminder em
## http://www.leg.ufpr.br/~fernandomayer/data
url <- "http://www.leg.ufpr.br/~fernandomayer/data/pib_gapminder.csv"
## Importando pela url
dados <- read.table(url, header = TRUE,
                    sep = ",", dec = ".",
                    stringsAsFactors = FALSE)
str(dados)

##----------------------------------------------------------------------
## Seleciona apenas países da América
dados_am <- subset(dados, continente == "Americas")
dim(dados_am)
str(dados_am)

##----------------------------------------------------------------------
## Exporta para arquivo
write.table(dados_am, "gapminder_americas.csv", row.names = FALSE,
            sep = ",", dec = ".")
