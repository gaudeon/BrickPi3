CFLAGS = `perl -MConfig -e 'print join (" ", @Config{qw(ccflags optimize cccdlflags)}, "-I$$Config{archlib}/CORE")'`
LDFLAGS = `perl -MConfig -e 'print $$Config{lddlflags}'`

swig: test_wrap.cxx test.o test_wrap.o test.so

clean:
	rm -f test_wrap.cxx test.pm test.o test_wrap.o test.so

test_wrap.cxx:
	swig -c++ -perl test.i

test.o:
	g++ -c $(CFLAGS) test.cpp

test_wrap.o:
	g++ -c $(CFLAGS) test_wrap.cxx 

test.so:
	gcc $(LDFLAGS) test.o test_wrap.o -o test.so

.PHONY: swig clean
