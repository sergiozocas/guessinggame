readme.txt:
	echo "Guessing Game Project. Unix Workbench course peer grade assignment." > README.md
	echo "Created on:" >> README.md 
	date >> README.md
	echo "Number of lines: " >> README.md
	cat guessinggame.sh | wc -l >> README.md

clean:
	rm README.md