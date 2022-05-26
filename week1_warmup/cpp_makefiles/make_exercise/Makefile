CXX=g++
CPPFLAGS=-I "$(IDIR)"

IDIR=.
ODIR=obj

_DEPS = functions.h
DEPS = $(patsubst %,$(IDIR)/%,$(_DEPS))

_OBJ = factorial.o hello.o main.o
OBJ = $(patsubst %,$(ODIR)/%,$(_OBJ))

$(ODIR)/%.o: %.cpp $(DEPS)
	$(CXX) $(CPPFLAGS) -c -o $@ $<

main: $(OBJ)
	$(CXX) $(CPPFLAGS) -o $@ $^

.PHONE: clean

clean:
	rm -rf $(ODIR)/*.o
