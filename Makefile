ODIR = build/obj
BDIR = build/bin
SDIR = src
SRCS = main.cpp test.cpp
OBJS = $(SRCS:.cpp=.o)

$(BDIR)/system-control-gui: $(patsubst %.o,$(ODIR)/%.o,$(OBJS))
	g++ -o $(BDIR)/system-control-gui $(patsubst %.o,$(ODIR)/%.o,$(OBJS))

$(ODIR)/main.o: $(SDIR)/main.cpp
	g++ -c $(SDIR)/main.cpp -o $(ODIR)/main.o

$(ODIR)/test.o: $(SDIR)/test.cpp
	g++ -c $(SDIR)/test.cpp -o $(ODIR)/test.o

clean:
	rm $(BDIR)/*
	rm $(ODIR)/*