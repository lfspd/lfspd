#exec env -i HOME=$HOME TERM=$TERM PS1='\u:\w\$ ' /bin/bash

alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

#alias rm='rm -i'
alias lt='ls -ltr'

export PS1="\u \w> "

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
        . ~/.bashrc
fi
