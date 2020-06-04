# estatidados-live

Repositório com o material utilizado na live sobre "Ferramentas para
pesquisa reproduzível" com Thiago Marques, do EstaTiDados, realizada no
dia 4 de junho de 2020.

Neste repositório você vai encontrar os diretórios:

- `slides`: código fonte dos slides apresentados
- `rmarkdown`: arquivos de exemplo de documentos dinâmicos

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
