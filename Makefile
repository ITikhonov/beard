all:
	tangle.py program.lit
	weave.py program.lit beard.html
