all: sgx-side-channel.tex sgx-body.tex sgx-side-channel.bib
	pdflatex sgx-side-channel.tex	

spelling:
	aspell -c -t sgx-body.tex
	aspell -c -t sgx-side-channel.tex

references:
	pdflatex sgx-side-channel.tex
	bibtex sgx-side-channel.aux
	pdflatex sgx-side-channel.tex
	pdflatex sgx-side-channel.tex

clean:
	rm -f *.aux *.log
