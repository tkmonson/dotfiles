#               _              
#       _______| |__  _ __ ___ 
#      |_  / __| '_ \| '__/ __|
#     _ / /\__ \ | | | | | (__ 
#    (_)___|___/_| |_|_|  \___|


# Force SSH and wget to conform to XDG Specification
[[ -s "$XDG_CONFIG_HOME/ssh/config" ]] && \
    SSH_CONFIG="-F $XDG_CONFIG_HOME/ssh/config"

[[ -s "$XDG_CONFIG_HOME/ssh/id_rsa" ]] && \
    SSH_ID="-i $XDG_CONFIG_HOME/ssh/id_rsa"

alias ssh="ssh $SSH_CONFIG $SSH_ID"
alias ssh-copy-id="ssh-copy-id $SSH_ID"

alias wget="wget --hsts-file=$XDG_CACHE_HOME/wget-hsts"

# -------- ALIASES --------

# Program shortcuts
alias ls='lsd'
alias la='lsd -a'
alias ll='lsd -l'
alias lal='lsd -al'
alias lt='lsd --tree'
alias l1='lsd -1'

alias p='sudo pacman'
alias psy='sudo pacman -Sy'
alias psyu='sudo pacman -Syu'
alias pss='sudo pacman -Ss'
alias pqs='sudo pacman -Qs'

alias md='mandown'
alias rg='ranger'
alias py='python'
alias scim='sc-im'
alias v='nvim'
alias vim='nvim'
alias z='zathura'

# Important Config Files
alias i3c="nvim $XDG_CONFIG_HOME/i3/config"
alias vrc="nvim $XDG_CONFIG_HOME/nvim/init.vim"
alias xrc="nvim $XDG_CONFIG_HOME/X11/xinitrc"
alias Xmm="nvim $XDG_CONFIG_HOME/X11/Xmodmap"
alias Xrc="nvim $XDG_CONFIG_HOME/X11/Xresources"
alias znv="nvim $XDG_CONFIG_HOME/zsh/.zshenv"
alias zrc="nvim $XDG_CONFIG_HOME/zsh/.zshrc"

# Important Documents
alias covlet="nvim $HOME/code/professional/cover-letter/tommy-monson-cover-letter.tex"
alias ifc="nvim $HOME/code/intuition-for-computation/intuition-for-computation.tex"
alias plog="nvim $HOME/notes/personal/log/2020-06.md"
alias resume="nvim $HOME/code/professional/resume/tommy-monson-resume.tex"

# Auto-WiFi
WIFI_SSID=$(cat $HOME/.local/share/personal/wifi-ssid)
WIFI_PW=$(cat $HOME/.local/share/personal/wifi-pw)
alias wifi="nmcli d w c $WIFI_SSID password $WIFI_PW"

# Command-line Clipboard Access (yank and put)
alias yc='xclip -selection clipboard'
alias pc='xclip -o -selection clipboard'

# -------- COLORS --------

# Import color scheme from wal
# (cat ~/.cache/wal/sequences &)

# -------- OPTIONS --------

setopt extended_glob

# -------- KEY BINDINGS --------

bindkey -v '^?' backward-delete-char

# -------- INITIAL COMMANDS --------

PROMPT=$'\n'"[%F{blue}%n%f@%F{yellow}%m%f]$  "
cat $XDG_CACHE_HOME/neofetch
ls

