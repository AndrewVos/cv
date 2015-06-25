all: AndrewVos.pdf

AndrewVos.pdf: AndrewVos.md style.css
	go get github.com/russross/blackfriday-tool
	blackfriday-tool AndrewVos.md AndrewVos.html
	wkhtmltopdf AndrewVos.html AndrewVos.pdf
	rm AndrewVos.html
