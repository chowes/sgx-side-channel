all: sgx-side-channel.tex sgx-body.tex sgx-side-channel.bib
	aspell -c -t sgx-side-channel.tex
	aspell -c -t sgx-body.tex
	pdflatex sgx-side-channel.tex	

references:
	pdflatex sgx-side-channel.tex
	bibtex sgx-side-channel.aux
	pdflatex sgx-side-channel.tex
	pdflatex sgx-side-channel.tex
