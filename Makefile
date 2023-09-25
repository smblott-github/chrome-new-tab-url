
build:
	coffee -c *.coffee

auto:
	coffee -w -c .

dist = dist/chrome-new-tab-url.zip
dist:
	mkdir -p dist
	rm -f $(dist)
	zip -r $(dist) manifest.json *.html *.js

.PHONY: build auto dist
