#!/bin/sh

# docker build -t linprog_book .

set -ev

Rscript -e "bookdown::render_book('index.Rmd', 'bookdown::gitbook')"
rm -r docs && mv _book docs && touch docs/.nojekyll

# Rscript -e "bookdown::render_book('index.Rmd', 'bookdown::pdf_book')"
# Rscript -e "bookdown::render_book('index.Rmd', 'bookdown::epub_book')"

