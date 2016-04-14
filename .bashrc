#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias k='exit'
alias e='vim'
alias eB='vim ~/.bashrc'
alias eV='vim ~/.vimrc'


# .bashrc
# User specific aliases and functions
PS1="\[\e[32m\]\u\[\e[31m\]@\[\e[32m\]\h\[\e[31m\]:\[\e[33m\]\w \[\e[31m\]$\[\e[0m\] "