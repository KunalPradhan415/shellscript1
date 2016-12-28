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

function subpa1
{
	echo "submit PA1"
	cd PA1
	mkdir solution
	mv misc.ml solution
	cd solution
	read -p "enter the name of the zip file in the form <LastName>_<FirstName>_cse130_pa1.zip" name
	zip $name *
	validate_pa1 $name
	turnin_pa1 $name
	cd ..
	cd ..
}

function subpa2
{
	echo "submit PA2"
	cd PA2
	mkdir solution
	mv misc.ml solution
	mv expr.ml solution
	mv art.ml solution
	mv art_g_sample.jpg solution
	mv gray1.jpg solution
	mv gray2.jpg solution
	mv gray3.jpg solution
	mv color1.jpg solution
	mv color2.jpg solution
	mv color3.jpg solution
	cd solution
	read -p "enter the name of the zip file in the form <LastName>_<FirstName>_cse130_pa2.zip" name
	zip $name *
	validate_pa2 $name
	turnin_pa2 $name
	cd ..
	cd ..
}

function subpa3
{
	echo "submit PA3"
	cd PA3
	mkdir solution
	mv misc.ml solution
	cd solution
	read -p "enter the name of the zip file in the form <LastName>_<FirstName>_cse130_pa3.zip" name
	zip $name *
	validate_pa3 $name
	turnin_pa3 $name
	cd ..
	cd ..
}

function subpa4
{
	echo "submit PA4"
	cd PA4
	mkdir solution
	mv config.make solution
	mv main.ml solution
	mv Makefile solution
	mv nanoLex.mll solution
	mv nano.ml solution
	mv nanoParse.mly solution
	mv rules.make solution
	mv test.ml solution
	mv toplevel.ml solution
	cd solution
	read -p "enter the name of the zip file in the form <LastName>_<FirstName>_cse130_pa4.zip" name
	zip $name *
	validate_pa4 $name
	turnin_pa4 $name
	cd ..
	cd ..
}

function subpa5
{
	echo "submit PA5"
	cd PA5
	mkdir pa5_solution
	mv misc.py pa5_solution
	mv crack.py pa5_solution
	cd pa5_solution
	read -p "enter the name of the zip file in the form <LastName>_<FirstName>_cse130_pa5.zip" name
	zip $name *
	validate_pa5 $name
	turnin_pa5 $name
	cd ..
	cd ..
}

function subpa6
{
	echo "submit PA6"
	cd PA6
	mkdir pa6_solution
	mv misc.py pa6_solution
	mv vector.py pa6_solution
	mv decorators.py pa6_solution
	cd pa6_solution
	read -p "enter the name of the zip file in the form <LastName>_<FirstName>_cse130_pa6.zip" name
	zip $name *
	validate_pa6 $name
	turnin_pa6 $name
	cd ..
	cd ..
}

function subpa7
{
	echo "submit PA7"
	cd PA7
	turnin_pa7 misc.pl
	cd ..
}

function turninpa
{
	read -p "Which programming assignment would you like to submit? Enter the number of the assigment from 1 to 7" val
	case $val in
		[1] ) subpa1;;
		[2] ) subpa2;;
		[3] ) subpa3;;
		[4] ) subpa4;;
		[5] ) subpa5;;
		[6] ) subpa6;;
		[7] ) subpa7;;
	esac
}

read -p "Do you wish to get starter code (S) or turnin an assignment(T)?" val
case $val in
	[S] ) pullcode;;
	[T] ) turninpa;;
esac




