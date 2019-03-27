.DEFAULT_GOAL := default

# default goal
default: pdf clean

## Create PDF
pdf:
	xelatex cv
	biber cv
	xelatex cv

## Cleanup build files
clean:
	rm -rf cv.log cv.out cv.aux cv.blg cv.bbl cv.bcf cv.run.xml
	
## Make sample
sample:
	xelatex -output-directory="samples/" cv
	biber -output-directory="samples/" cv
	xelatex -output-directory="samples/" cv
	pdftoppm -aa yes -aaVector yes -freetype yes -rx 150 -ry 150 -l 1 -png samples/cv.pdf > samples/cv.png
	rm -rf samples/cv.log samples/cv.out samples/cv.aux samples/cv.blg samples/cv.bbl samples/cv.bcf samples/cv.run.xml samples/cv.pdf


## Show this help screen
help:
	@printf "Available targets\n\n"
	@awk '/^[a-zA-Z\-\_0-9]+:/ { \
		helpMessage = match(lastLine, /^## (.*)/); \
		if (helpMessage) { \
			helpCommand = substr($$1, 0, index($$1, ":")-1); \
			helpMessage = substr(lastLine, RSTART + 3, RLENGTH); \
			printf "%-30s %s\n", helpCommand, helpMessage; \
		} \
	} \
	{ lastLine = $$0 }' $(MAKEFILE_LIST)
