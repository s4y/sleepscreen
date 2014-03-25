CC=clang

CCFLAGS+=\
	-framework Foundation\
	-framework IOKit\
	-O3

sleepscreen: sleepscreen.m
	$(CC) $(CCFLAGS) -o $@ $<
