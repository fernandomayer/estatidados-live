library(knitr)
## knitr options
opts_chunk$set(
    ## cache = TRUE,
    tidy = FALSE,
    comment = "#",
    collapse = TRUE, ## colapsa chunks em R Markdown
    fig.width = 10,
    fig.height = 8,
    fig.align = "center",
    out.width = "80%",
    ## dpi = 80, ## aumentar o dpi para exibir maior.
    ## dev = "png",
    cache.path = "cache/",
    fig.path = "figures/"
    )
