SPLATTR:=/data/ackley/PART4/code/D/SPLAT/splattr -u /data/ackley/PART4/code/E/ULAM/
MFZRUN:=/data/ackley/PART4/code/E/MFM/bin/mfzrun
MFZGEOMETRY:={2G2}
MFZARGS:=$(MFZGEOMETRY) 
DIR:=$(shell pwd)
DEMO:=$(shell basename "$(DIR)")
MFS:=$(wildcard *.mfs)
SPLAT:=$(wildcard *.splat)
INPUTS:=$(SPLAT) $(MFS) 

run:	$(DEMO).mfz
	$(MFZRUN) $^ run $(MFZARGS)

$(DEMO).mfz:	$(INPUTS) | Makefile* 
	$(SPLATTR) $^ $@

clean:	FORCE
	rm -rf .gen .splatgen *~ ../*~

realclean:	clean
	rm -f *.mfz

movie:	$(DEMO).mfz
	$(MFZRUN) $^ run $(MFZGEOMETRY) -a 0 -e 2 -n -p 30

live:	$(DEMO).mfz
	$(MFZRUN) $^ run {{1E1}} -a 0 -n -cp live10.mfs


accmovie:	$(MFZ)
	$(MFZRUN) $^ run $(MFZGEOMETRY) -a 0 -e 0 --accelerate 90 --surge 180 -n -p 30

.PHONY:	FORCE
