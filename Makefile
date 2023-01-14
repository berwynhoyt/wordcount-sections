# Makefile to build .oxt extension file

all:
	zip -r Wordcounter.oxt *.xcu *.xml icons META-INF pkg-description registration Wordcounter
