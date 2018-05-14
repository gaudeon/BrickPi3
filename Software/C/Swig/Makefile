swig: test_wrap.cxx test.o test_wrap.o test.so

clean:
	rm -f test_wrap.cxx test.pm test.o test_wrap.o test.so

test_wrap.cxx:
	swig -c++ -perl test.i

test.o:
	g++ -c test.cpp

test_wrap.o:
	g++ -c test_wrap.cxx -I/usr/lib/arm-linux-gnueabihf/perl/5.20/CORE -Dbool=char

test.so:
	gcc -shared test.o test_wrap.o -o test.so

.PHONY: swig clean
