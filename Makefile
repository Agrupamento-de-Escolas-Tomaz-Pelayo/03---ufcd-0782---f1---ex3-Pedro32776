a.out:
	gcc Aaprender2.c

clean:
	rm Aaprender2

test: a.out
	bash test.sh
