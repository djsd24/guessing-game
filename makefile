all: README.md

README.md: guessinggame.sh
	echo "## The Unix Workbench course assignment\n" > README.md
	echo -n "README.md created: " >> README.md
	date >> README.md
	echo -n "\nNumber of lines in guessinggame.sh: " >> README.md
	wc -l < ./guessinggame.sh >> README.md
