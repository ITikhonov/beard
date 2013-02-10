all:
	tangle.py program.lit
	weave.py program.lit beard.html

test:
	make
	python2 beard/beard.py quick.beard
	echo 28028741e9731a04a0f4d0913158d590
	PYTHONPATH=`pwd` python2 beard/beard.py --test quick | md5sum
	js test.js | md5sum
