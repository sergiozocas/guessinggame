readme.txt:
	echo "Guessing Game Project. Unix Workbench course peer grade assignment." > readme.txt
	echo "Created on:" >> readme.txt 
	date >> readme.txt
	echo "Number of lines: " >> readme.txt
	cat guessinggame.sh | wc -l >> readme.txt

clean:
	rm readme.txt