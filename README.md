# estatidados-live

Repositório com o material utilizado na live sobre "Ferramentas para
pesquisa reproduzível" com Thiago Marques, do [canal
EstaTiDados](https://www.youtube.com/channel/UC4jROkPjTvnXRkuo2GAwKXw),
realizada no dia 4 de junho de 2020.

O vídeo está disponível neste
[link](https://www.youtube.com/watch?v=mj-YwqdSkvo). Os slides estão
renderizados neste
[link](http://leg.ufpr.br/~fernandomayer/palestra/estatidados/).

Neste repositório você vai encontrar os diretórios:

- `exemplos_renv`: os dois arquivos zipados são exemplos de projetos
  compartilhados com o `renv`. O diretório `regressao` contém arquivos
  que podem ser usados como exemplo para iniciar um projeto como `renv`.
- `rmarkdown`: arquivos de exemplo de documentos dinâmicos.
- `slides`: código fonte dos slides apresentados.

## Para configurar o renv

### Fora do RStudio

A primeira vez que abrir o R neste diretório (depois de baixar/clonar),
o pacote `renv` será instalado automaticamente. Para "restaurar" todos
os pacotes necessários aqui, faça

```r
renv::restore()
```

### No RStudio

No RStudio, vá no menu `File > Open Project...` e selecione o arquivo
`estatidados-live.Rproj`. O projeto será carregado e o pacote `renv`
será instalado automaticamente. Ainda assim, é necessário fazer

```r
renv::restore()
```

para "restaurar" os pacotes necessários.
