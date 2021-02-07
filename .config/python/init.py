import atexit
import os
import readline

histfile = os.path.join(os.path.expanduser("~"), ".cache", "python", "history")
if "XDG_CONFIG_HOME" in os.environ:
    histfile = os.path.join(os.environ.get("XDG_CONFIG_HOME"), "python", "history")
try:
    readline.read_history_file(histfile)
    readline.set_history_length(1000)
except FileNotFoundError:
    pass

atexit.register(readline.write_history_file, histfile)
