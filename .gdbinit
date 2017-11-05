set disassembly-flavor intel 
set auto-load safe-path /

source ~/build/peda/peda.py
python import sys
python from libheap import *

#source /usr/share/pwndbg/gdbinit.py

