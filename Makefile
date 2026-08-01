# Makefile to build/install .oxt extension file

all:
	zip --quiet -rFS Wordcounter.oxt *.xcu *.xml icons META-INF pkg-description registration Wordcounter

install: all
	unopkg remove org.broffice.wordcountermacro
	echo yes | unopkg add --verbose ~/projects/wordcount-sections/Wordcounter.oxt >/dev/null
