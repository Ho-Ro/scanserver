# SCANSERVER

This project allows to scan documents with an Canon LiDE25 attached to a RaspberryPi
by simply pressing the scanner buttons:


- Button 1 (scan) just scans one page (grayscale), formats it as PDF and stores it temporarily.
- Button 3 (email) combines all temporary pages into one pdf document (available over network) and deletes the temp files.
- Button 2 (print) - same as *Button 3* and prints the document additionally on a network printer via cups.

Pressing *Button 2* or *Button 3* without previous scanning via *Button 1* just scans and processes
only one page accordingly.

The shell script [`scanserver`](scanserver) runs as a service on the Pi
and detects the pressed buttons with the help of the program `scannerbutton`,
which is derived from the projects [scanbuttond](https://sourceforge.net/projects/scanbuttond/)
and [scanbd](https://sourceforge.net/projects/scanbd/).

Additional access to the scanner, e.g. via ssh is possible with the wrapper script [`r_scanimage`](r_scanimage)
that uses the `flock` call to gain exclusive access.

Works on on my system - Canon LiDE25 on a RasPi2 - YMMV.

Integration of Canon LiDE210 - work in progress, not yet tested.
