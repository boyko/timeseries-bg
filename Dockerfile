FROM conoria/alpine-r-bookdown

RUN apk add gsl-dev
# RUN R -e "install.packages(c('RcppZiggurat'), repos='http://cran.us.r-project.org')"
RUN R -e "install.packages(c('lpSolve', 'gMOIP'), repos='http://cran.us.r-project.org')"
WORKDIR /usr/src

COPY . .

# RUN R -q -e 'bookdown::render_book("index.Rmd", "bookdown::gitbook")' && mv _book /public
