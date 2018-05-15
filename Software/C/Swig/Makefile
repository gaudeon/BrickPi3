SWIG = swig

CXX = g++

CXXFLAGS = `perl -MConfig -e 'print join (" ", @Config{qw(ccflags optimize cccdlflags)}, "-I$$Config{archlib}/CORE")'`

LDFLAGS = `perl -MConfig -e 'print $$Config{lddlflags}'`

FILE_I = test.i

FILE_CXX = test.cxx

FILE_WRAP_CXX = test_wrap.cxx

FILE_PM: test.pm

FILE_O = test.o

FILE_WRAP_O = test_wrap.o

FILE_SO = test.so

swig: $(FILE_WRAP_CXX) $(FILE_O) $(FILE_WRAP_O) $(FILE_SO)

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
