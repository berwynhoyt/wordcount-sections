# Makefile to build .oxt extension file

all:
	zip -r Wordcounter.oxt Addons.xcu description.xml icons META-INF pkg-description registration Wordcounter
