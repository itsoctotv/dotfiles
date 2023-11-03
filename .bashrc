#
# ~/.bashrc
#
# [[ himBHs == *i* ]] && 

# If not running interactively, don't do anything
[[ $- != *i* ]] && return



alias q="exit"
alias ls="lsd"
alias cat="bat"
#alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '
eval "$(starship init bash)"
if [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
fi
#bind 'set show-all-if-ambiguous on'
#bind 'TAB:menu-complete'

alias pacman-autoremove="sudo pacman -Rns $(pacman -Qdtq)"
alias rm="rm -i"
alias nano="micro"
pfetch
source ~/.local/share/blesh/ble.sh
export PATH=/home/octo/.local/bin:/sbin:/bin:/usr/local/sbin:/usr/local/bin:/usr/bin:/usr/sbin:/usr/lib/jvm/default/bin:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl
eval $(keychain --eval --quiet --noask id_ed25519)
