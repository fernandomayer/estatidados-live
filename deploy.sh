#!/bin/sh

USER=fernandomayer
HOST=leg.ufpr.br
DIR=public_html/palestra/estatidados
read -p 'PORTA: ' PORT

Rscript -e 'rmarkdown::render("./slides/pesqrep-slides.Rmd", output_options = list(self_contained = TRUE))'
cp ./slides/pesqrep-slides.html ./slides/index.html
rsync -avzz --delete -e "ssh -p $PORT" ./slides/index.html ${USER}@${HOST}:~/${DIR}
rm ./slides/index.html

exit 0
