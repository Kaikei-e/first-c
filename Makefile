# Makefile

CFLAGS=-std=c11 -g -static

xc: xc.c
	$(CC) -o ./bin/xc xc.c $(CFLAGS)

test: ./bin/xc
	./test.sh

clean:
	rm -f ./bin/first-c *.o *~ tmp*

.PHONY: test clean