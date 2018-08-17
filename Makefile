all: README.md

README.md: 
	echo "# The coursera/unix assignment" > README.md
	echo -n "**Date**: " >> README.md
	date >> README.md
	echo  "">> README.md
	echo -n "**Number of lines in guessinggame.sh:** " >> README.md
	grep -c '' guessinggame.sh >> README.md

clean:
	rm README.md
