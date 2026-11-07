#
# ~/.bashrc
#

[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias pacup='sudo pacman -Syu'
alias pacrm='sudo pacman -Rns -'
alias pacorph='pacman -Qtdq | sudo pacman -Rns -'
#alias dot='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

#PS1='[\u@\h \W]\$ '
PS1='\[\e[2m\]\A\[\e[0m\] \[\e[3m\]\W\[\e[0m\] > '
