# SCANSERVER

This project allws to scan documents with an Canon LiDE25 attached to a RaspberryPi
by simply pressing the scanner buttons:

The shell script [scanserver](https://github.com/Ho-Ro/scanserver/blob/main/scanserver`) runs as a service on the Pi
and calls [scannerbutton](https://github.com/Ho-Ro/scanserver/blob/main/scannerbutton`) to detect user actions.

- Button 1 (scan) just scans one page (grayscale), formats it as PDF and stores it temporarily.
- Button 3 (email) combines all temporary pages into one pdf document and deletes the temp files.
- Button 2 (print) - same as *Button 3* and prints the document additionally on a printer via cups.

Pressing *Button 2* or *Button 3* without previous scanning via *Button 1* just scans and processes
only one page accordingly.

The buttons are detected by the program [scannerbutton](https://github.com/Ho-Ro/scanserver/blob/main/scannerbutton`),
which is derived from the projects [scanbuttond](https://sourceforge.net/projects/scanbuttond/)
and [scanbd](https://sourceforge.net/projects/scanbd/).

Additional access to the scanner, e.g. via ssh is possible with the wrapper script [r_scanimage](https://github.com/Ho-Ro/scanserver/blob/main/r_scanimage`) that uses the `flock` call.

Works on on my system - Canon LiDE25 on a RasPi2 - YMMV.
