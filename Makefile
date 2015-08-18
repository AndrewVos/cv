all: AndrewVos.pdf

AndrewVos.pdf: AndrewVos.md style.css
	go get github.com/russross/blackfriday-tool
	blackfriday-tool AndrewVos.md AndrewVos.html
	# needs a static wkhtmltopdf: http://wkhtmltopdf.org/downloads.html
	# wget http://download.gna.org/wkhtmltopdf/0.12/0.12.2.1/wkhtmltox-0.12.2.1_linux-trusty-amd64.deb
	# dpkg -i wkhtmltox-0.12.2.1_linux-trusty-amd64.deb
	wkhtmltopdf AndrewVos.html AndrewVos.pdf
