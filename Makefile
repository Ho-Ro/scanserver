all: scannerbutton scannerbutton_g


scannerbutton: plustek.o libusbi.o
	gcc $^ -o $@ -lusb

scannerbutton_g: genesys.o libusbi.o
	gcc $^ -o $@ -lusb

genesys.o: genesys.c
	gcc -c $< -o $@ -I.

plustek.o: plustek.c
	gcc -c $< -o $@ -I.

libusbi.o: libusbi.c
	gcc -c $< -o $@ -I.


.PHONY: clean
clean:
	-rm *~ *.o scannerbutton*
