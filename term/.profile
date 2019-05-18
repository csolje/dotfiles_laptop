[[ -f ~/.bashrc ]] && . ~/.bashrc

export PATH=$PATH:$HOME/.scripts
export EDITOR="vim"
export TERMINAL="st"
export BROWSER="firefox"
#export BROWSER="qutebrowser"

if [[ "$(tty)" = "/dev/tty1" ]]; then
    pgrep i3 || startx
fi
