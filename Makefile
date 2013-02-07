all:
	tangle.py program.lit
	weave.py program.lit beard.html

TESTSUM=830f1ac29f34d50419e019ecbd3f84c3

test:
	make
	python2 beard/beard.py example.beard
	echo should be
	echo $(TESTSUM)
	PYTHONPATH=`pwd` python2 beard/beard.py --test example | md5sum
	js test.js | md5sum
