CROSS_COMPILE ?= 
GCC = $(CROSS_COMPILE)gcc

.PHONY: all
all: writer

writer: writer.c
	$(GCC) -o writer writer.c

clean:
	rm -f writer
