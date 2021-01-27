#               _              
#       _______| |__  _ __ ___ 
#      |_  / __| '_ \| '__/ __|
#     _ / /\__ \ | | | | | (__ 
#    (_)___|___/_| |_|_|  \___|


# Run NVM script
[ -s "$NVM_DIR/nvm.sh" ] && \
    \. "$NVM_DIR/nvm.sh"

# Force SSH and wget to conform to XDG Specification
[[ -s "$XDG_CONFIG_HOME/ssh/config" ]] && \
    SSH_CONFIG="-F $XDG_CONFIG_HOME/ssh/config"

[[ -s "$XDG_CONFIG_HOME/ssh/ibm_rsa" ]] && \
    SSH_ID="-i $XDG_CONFIG_HOME/ssh/ibm_rsa"

alias ssh="ssh $SSH_CONFIG $SSH_ID"
alias ssh-copy-id="ssh-copy-id $SSH_ID"

alias wget="wget --hsts-file=$XDG_CACHE_HOME/wget-hsts"

# -------- ALIASES --------

# Program shortcuts
alias b='buku'
alias ba='buku -a'
alias bd='buku -d'
alias bp='buku -p'
alias bt='buku -t'
alias bu='buku -u'

alias g='git'
alias ga='git add'
alias gau='git add -u'
alias gc='git commit'
alias gcm='git commit -m'

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
alias pqi='sudo pacman -Qi'

alias y='yay'
alias ysy='yay -Sy'
alias ysyu='yay -Syu'
alias yss='yay -Ss'
alias yqs='yay -Qs'
alias yqi='yay -Qi'

alias lg='lazygit'
alias md='mandown'
alias rg='ranger'
alias py='python'
alias scim='sc-im'
alias v='nvim'
alias vim='nvim'
alias z='zathura'

# Important Config Files
alias i3rc="nvim $XDG_CONFIG_HOME/i3/config"
alias qrc="nvim $XDG_CONFIG_HOME/qutebrowser/config.py"
alias skrc="nvim $XDG_CONFIG_HOME/skhd/skhdrc"
alias vrc="nvim $XDG_CONFIG_HOME/nvim/init.vim"
alias xmrc="nvim $XDG_CONFIG_HOME/xmonad/xmonad.hs"
alias xrc="nvim $XDG_CONFIG_HOME/X11/xinitrc"
alias Xmm="nvim $XDG_CONFIG_HOME/X11/Xmodmap"
alias Xrc="nvim $XDG_CONFIG_HOME/X11/Xresources"
alias yrc="nvim $XDG_CONFIG_HOME/yabai/yabairc"
alias znv="nvim $XDG_CONFIG_HOME/zsh/.zshenv"
alias zrc="nvim $XDG_CONFIG_HOME/zsh/.zshrc"

# Important Documents
alias restex="nvim $HOME/code/professional/resume/tommy-monson-resume.tex"
alias respdf="zathura $HOME/code/professional/resume/tommy-monson-resume.pdf &"
alias covtex="nvim $HOME/code/professional/cover-letter/tommy-monson-cover-letter.tex"
alias covpdf="zathura $HOME/code/professional/cover-letter/tommy-monson-cover-letter.pdf &"
alias ifctex="nvim $HOME/code/intuition-for-computation/intuition-for-computation.tex"
alias ifcpdf="zathura $HOME/code/intuition-for-computation/intuition-for-computation.pdf &"
alias concepts="nvim $HOME/notes/programming/concepts-to-write-about.txt"
alias quotes="nvim $HOME/notes/personal/quotations.md"
alias techs="nvim $HOME/notes/programming/technologies-to-learn.txt"
alias thelog="nvim $HOME/notes/personal/log/2020-12.txt"
alias tolearn="nvim $HOME/code/tolearn.txt"

# Auto-WiFi
WIFI_SSID=$(cat $HOME/.local/share/personal/wifi-ssid)
WIFI_PW=$(cat $HOME/.local/share/personal/wifi-pw)
alias wifi="nmcli d w c $WIFI_SSID password '$WIFI_PW'"

# Command-line Clipboard Access (yank and put)
alias yc='xclip -selection clipboard'
alias pc='xclip -o -selection clipboard'

# Mounting (Android phone, USB drive)
alias mntphone="simple-mtpfs --device 1 $HOME/phone/"
alias umntphone="fusermount -u $HOME/phone/"
alias um='udiskie-umount /dev/sdb1'
alias backup="cp -ruv $HOME/code  \
                      $HOME/media \
                      $HOME/notes \
                      $XDG_CONFIG_HOME /run/media/tkmonson/titan_usb/alshain"

alias gitkey="eval '$(ssh-agent -s)'; ssh-add $HOME/.config/ssh/ibm_rsa"

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
cd ~; ls

