
build:
	coffee -c *.coffee

auto:
	coffee -w -c .

pack:
	cd .. && \
	   zip -r chrome-new-tab-url.zip chrome-new-tab-url \
	   	-x chrome-new-tab-url/.git'*' \
		-x chrome-new-tab-url/'*'.coffee \
		-x chrome-new-tab-url/'*'.md \
		-x chrome-new-tab-url/Makefile
