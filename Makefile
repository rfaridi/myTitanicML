
viewSub2: titanSub2.html
	xdg-open '$<'

viewSub1: titanSub1.html
	xdg-open '$<'

all: titanSub1.html titanSub2.html	

titanSub2.html: titanSub2.md
	Rscript -e "library(rmarkdown);render('$<','html_document')"

titanSub2.md: titanSub2.Rmd
	Rscript -e "library(knitr);knit('$<')"


titanSub2.Rmd: titanSub2.R
	Rscript -e "library(knitr);spin('$<',knit=FALSE,format='Rmd')"

	
titanSub1.html: titanSub1.md
	Rscript -e "library(rmarkdown);render('$<','html_document')"

titanSub1.md: titanSub1.Rmd
	Rscript -e "library(knitr);knit('$<')"

titanSub1.Rmd: titanSub1.R
	Rscript -e "library(knitr);spin('$<',knit=FALSE,format='Rmd')"
