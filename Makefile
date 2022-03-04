all: scannerbutton


scannerbutton: plustek.o libusbi.o
	gcc $^ -o $@ -lusb

plustek.o: plustek.c
	gcc -c $< -o $@ -I.

libusbi.o: libusbi.c
	gcc -c $< -o $@ -I.


.PHONY: clean
clean:
	-rm *~ *.o scannerbutton
