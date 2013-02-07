all:
	tangle.py program.lit
	weave.py program.lit beard.html

test:
	make
	python2 beard/beard.py example.beard
	echo should be
	echo f355c63a4a83122931effe83f67e35de
	PYTHONPATH=`pwd` python2 beard/beard.py --test example | md5sum
	js test.js | md5sum
