# Omarchy environment (OMARCHY_PATH + PATH), needed even for non-interactive shells
[[ -r /usr/share/omarchy/default/bash/env-bootstrap ]] && source /usr/share/omarchy/default/bash/env-bootstrap

# If not running interactively, don't do anything else (leave this above the rc source)
[[ $- != *i* ]] && return

# All the default Omarchy aliases and functions
# (don't mess with these directly, just overwrite them here!)
source "$OMARCHY_PATH/default/bash/rc"

# Add your own exports, aliases, and functions here.
alias yr='curl wttr.in'

kode () {
  cd /home/dodde/Documents/kode/$1
}

start () {
  systemctl start $1
}

stop () {
  systemctl stop $1
}


# Make an alias for invoking commands you use constantly
# alias p='python'

. "$HOME/.local/share/../bin/env"
