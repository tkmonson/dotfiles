#               _                     
#       _______| |__   ___ _ ____   __
#      |_  / __| '_ \ / _ \ '_ \ \ / /
#     _ / /\__ \ | | |  __/ | | \ V / 
#    (_)___|___/_| |_|\___|_| |_|\_/  
                                 

# Add userspace directories to $PATH, if you want
# typeset -U path
# path=($HOME/bin $path)

# XDG Base Directory Specification Variables
export XDG_DATA_HOME="$HOME"/.local/share
export XDG_CONFIG_HOME="$HOME"/.config
export XDG_CACHE_HOME="$HOME"/.cache
export XDG_DATA_DIRS=/usr/local/share:/usr/share
export XDG_CONFIG_DIRS=/etc/xdg

# Force config files to conform to XDG Specification
export _JAVA_OPTIONS=-Djava.util.prefs.userRoot="$XDG_CONFIG_HOME"/java
export CARGO_HOME="$XDG_DATA_HOME"/cargo
export GRADLE_USER_HOME="$XDG_DATA_HOME"/gradle
export ELECTRUMDIR="$XDG_DATA_HOME"/electrum
export GNUPGHOME="$XDG_DATA_HOME"/gnupg
export GOPATH="$XDG_DATA_HOME"/go
export HISTFILE="$XDG_DATA_HOME"/zsh/history
export ICEAUTHORITY="$XDG_CACHE_HOME"/ICEauthority
export LESSKEY="$XDG_CONFIG_HOME"/less/lesskey
export LESSHISTFILE="$XDG_CACHE_HOME"/less/history
export NODE_REPL_HISTORY="$XDG_DATA_HOME"/node_repl_history
export NPM_CONFIG_USERCONFIG="$XDG_CONFIG_HOME"/npm/npmrc
export PYTHONSTARTUP="$XDG_CONFIG_HOME"/python/pythonrc.py
export XAUTHORITY="$XDG_RUNTIME_DIR"/Xauthority
export XINITRC="$XDG_CONFIG_HOME"/X11/xinitrc
export XMONAD_CACHE_HOME="$XDG_CACHE_HOME"/xmonad
export XMONAD_CONFIG_HOME="$XDG_CONFIG_HOME"/xmonad
export XMONAD_DATA_HOME="$XDG_DATA_HOME"/xmonad

# Other Variables
export VISUAL=/usr/bin/nvim
export EDITOR="$VISUAL"
export PAGER=/usr/bin/less
export BROWSER=/usr/bin/qutebrowser

