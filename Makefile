DO_QUARTO = quarto render

all: qmd rmd md

qmd: code_in_list_qmd.qmd
	$(DO_QUARTO) $<

rmd: code_in_list_rmd.Rmd
	$(DO_QUARTO) $<

md: code_in_list_rmd.Rmd
	Rscript -e "rmarkdown::render('$<', output_file = 'just_rmarkdown.html')"
