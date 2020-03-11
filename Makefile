all:	code

code:	FORCE
	make -C code

clean:	FORCE
	make -C code clean

run:	FORCE
	make -C code run

ishtar:	FORCE
	make -C code ishtar

.PHONY:	FORCE
