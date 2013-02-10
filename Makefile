all:
	tangle.py program.lit
	weave.py program.lit beard.html

test:
	make
	python2 beard/beard.py quick.beard
	echo should be
	echo f355c63a4a83122931effe83f67e35de
	PYTHONPATH=`pwd` python2 beard/beard.py --test quick | md5sum
	js test.js | md5sum
