#!/usr/bin/env python3

# export PYTHONSTARTUP="$HOME/.pythonrc"

# Allow you to quit from python/IPython with a `q` statement
# instead of just `quit` or `exit()`

import sys
from functools import wraps

try:
    from IPython.core.interactiveshell import InteractiveShell
except ImportError:
    # print("Not loading IPython")
    pass
else:
    # Inspired by: https://stackoverflow.com/a/49176714/2293508
    def wrap_showtraceback(func):
        @wraps(func)
        def new_showtraceback(*args, **kwargs):
            # extract exception type, value and traceback
            etype, evalue, tb = sys.exc_info()
            if etype == NameError and str(evalue) == "name 'q' is not defined":
                print("Quitting...")
                exit()
            else:
                # otherwise run the original hook
                value = func(*args, **kwargs)
                return value
        return new_showtraceback

    InteractiveShell.showtraceback = wrap_showtraceback(InteractiveShell.showtraceback)

def wrap_excepthook(func):
    @wraps(func)
    def new_excepthook(etype, evalue, tb):
        if etype == NameError and str(evalue) == "name 'q' is not defined":
            print("Quitting...")
            exit()
        else:
            value = func(etype, evalue, tb)
            return value
    return new_excepthook

sys.excepthook = wrap_excepthook(sys.excepthook)
