#                 _   _                                        
#     _ __  _   _| |_| |__   ___  _ __  _ __ ___   _ __  _   _ 
#    | '_ \| | | | __| '_ \ / _ \| '_ \| '__/ __| | '_ \| | | |
#    | |_) | |_| | |_| | | | (_) | | | | | | (__ _| |_) | |_| |
#    | .__/ \__, |\__|_| |_|\___/|_| |_|_|  \___(_) .__/ \__, |
#    |_|    |___/                                 |_|    |___/ 


import atexit
import os
import readline
import rlcompleter

# Tab Completion
readline.parse_and_bind("tab: complete")

# History File
histfile = os.path.join(os.environ["XDG_CONFIG_HOME"], "python/python_history")
try:
    readline.read_history_file(histfile)
    readline.set_history_length(1000)
except FileNotFoundError:
    pass
atexit.register(readline.write_history_file, histfile)

del os, histfile, readline, rlcompleter

