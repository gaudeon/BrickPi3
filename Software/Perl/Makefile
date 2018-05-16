SWIG = swig

CXX = g++

CXXFLAGS = `perl -MConfig -e 'print join (" ", @Config{qw(ccflags optimize cccdlflags)}, "-I$$Config{archlib}/CORE")'`

LDFLAGS = `perl -MConfig -e 'print $$Config{lddlflags}'`

FILE_I = ./BrickPi3.i

FILE_CXX = ../C/BrickPi3.cpp

FILE_WRAP_CXX = ./BrickPi3_wrap.cxx

FILE_PM = ./BrickPi3.pm

FILE_O = ./BrickPi3.o

FILE_WRAP_O = ./BrickPi3_wrap.o

FILE_SO = ./BrickPi3.so

swig: clean $(FILE_WRAP_CXX) $(FILE_O) $(FILE_WRAP_O) $(FILE_SO)

clean:
	rm -f $(FILE_WRAP_CXX) $(FILE_PM) $(FILE_O) $(FILE_WRAP_O) $(FILE_SO)

$(FILE_WRAP_CXX):
	$(SWIG) -c++ -perl -outdir . $(FILE_I)

$(FILE_O):
	$(CXX) -c $(CXXFLAGS) $(FILE_CXX)

$(FILE_WRAP_O):
	$(CXX) -c $(CXXFLAGS) $(FILE_WRAP_CXX)

$(FILE_SO):
	$(CXX) $(LDFLAGS) $(FILE_O) $(FILE_WRAP_O) -o $(FILE_SO)

.PHONY: swig clean
