#!/bin/bash

function pullcode 
{
	echo "making main directory"
	mkdir CSE130Assignments
	cd CSE130Assignments
	mkdir PA1
	cd PA1
	curl http://cseweb.ucsd.edu/classes/fa16/cse130-a/pa1/misc.ml >> misc.ml
	curl http://cseweb.ucsd.edu/classes/fa16/cse130-a/pa1/test.ml >> test.ml
	cd ..
	mkdir PA2
	cd PA2
	curl http://cseweb.ucsd.edu/classes/fa16/cse130-a/pa2/misc.ml >> misc.ml
	curl http://cseweb.ucsd.edu/classes/fa16/cse130-a/pa2/expr.ml >> expr.ml
	curl http://cseweb.ucsd.edu/classes/fa16/cse130-a/pa2/art.ml >> art.ml
	curl http://cseweb.ucsd.edu/classes/fa16/cse130-a/pa2/test.ml >> test.ml
	cd ..
	mkdir PA3
	cd PA3
	curl http://cseweb.ucsd.edu/classes/fa16/cse130-a/pa3/misc.ml >> misc.ml
	curl http://cseweb.ucsd.edu/classes/fa16/cse130-a/pa3/test.ml >>test.ml
	cd ..
	mkdir PA4
	cd PA4
	curl http://cseweb.ucsd.edu/classes/fa16/cse130-a/pa4/pa4.zip >> pa4.zip
	unzip pa4.zip
	rm pa4.zip
	cd ..
	mkdir PA5
	cd PA5
	curl http://cseweb.ucsd.edu/classes/fa16/cse130-a/pa5/misc.py >> misc.py
	curl http://cseweb.ucsd.edu/classes/fa16/cse130-a/pa5/crack.py >> crack.py
	curl http://cseweb.ucsd.edu/classes/fa16/cse130-a/pa5/test.py >> test.py
	curl http://cseweb.ucsd.edu/classes/fa16/cse130-a/pa5/words >> words
	curl http://cseweb.ucsd.edu/classes/fa16/cse130-a/pa5/passwd >> passwd
	curl http://cseweb.ucsd.edu/classes/fa16/cse130-a/pa5/news.txt >> news.txt
	cd ..	
	mkdir PA6
	cd PA6
	curl http://cseweb.ucsd.edu/classes/fa16/cse130-a/pa6/misc.py >> misc.py
	curl http://cseweb.ucsd.edu/classes/fa16/cse130-a/pa6/vector.py >> vector.py
	curl http://cseweb.ucsd.edu/classes/fa16/cse130-a/pa6/decorators.py >> decorators.py
	curl http://cseweb.ucsd.edu/classes/fa16/cse130-a/pa6/test.py >> test.py
	curl http://cseweb.ucsd.edu/classes/fa16/cse130-a/pa6/decorators.out >> decorators.out
	cd ..
	mkdir PA7
	cd PA7
	curl http://cseweb.ucsd.edu/classes/fa16/cse130-a/pa7/misc.pl >> misc.pl
	cd ..
}

function turninpa
{
	echo "dont do this yet"
}

read -p "Do you wish to get starter code (S) or turnin an assignment(T)?" val
case $val in
	[S] ) pullcode;;
	[T] ) turninpa;;
esac




