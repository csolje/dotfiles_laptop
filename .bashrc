# /etc/skel/.bashrc
#
# This file is sourced by all *interactive* bash shells on startup,
# including some apparently interactive shells such as scp and rcp
# that can't tolerate any output.  So make sure this doesn't display
# anything or bad things will happen !


# Test for an interactive shell.  There is no need to set anything
# past this point for scp and rcp, and it's important to refrain from
# outputting anything in those cases.
if [[ $- != *i* ]] ; then
	# Shell is non-interactive.  Be done now!
	return
fi


# Put your fun stuff here.
# Export settings
export EDITOR="vim"
export PAGER="less"
export BROWSER="qutebrowser"
export BROWSERCLI="w3m"
export MOVPLAY="mpv"
export PICVIEW="feh"
export SNDPLAY="mpv"

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# User specific aliases and functions
PS1="\[\e[32m\]\u\[\e[31m\]@\[\e[32m\]\h\[\e[31m\]:\[\e[33m\]\w \[\e[31m\]$\[\e[0m\] "

## Alias
alias ls='ls --color=auto'
alias la='ls -al'
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

## Vim stuff
alias e='vim'
alias eV='vim ~/.vimrc'

## Neovim stuff
alias v='nvim'
alias vN='nvim ~/.config/nvim/init.vim'

## Zsh Stuff
alias eZ='vim ~/.zshrc'
alias vZ='nvim ~/.zshrc'
alias Z='source ~/.zshrc'

## Bash Stuff
alias eB='vim ~/.bashrc'
alias vB='nvim ~/.bashrc'

## X Resources Stuff
alias eX='vim ~/.Xresources'
alias XTR='xrdb -merge ~/.Xresources'
alias exI='vim ~/.xinitrc'
alias exM='vim ~/.xmonad/xmonad.hs'
alias eO='vim ~/.config/openbox/rc.xml'
alias eoA='vim ~/.config/openbox/autostart.sh'
alias ewI='vim ~/.weechat/irc.conf'
alias eW='vim ~/.weechat/weechat.conf'
alias ei3C='vim ~/.config/i3/config'
alias k='exit'

## X Resources and xinitrc Stuff
alias vX='nvim ~/.Xresources'
alias XTR='xrdb -merge ~/.Xresources'
alias vxI='nvim ~/.xinitrc'

## Config Stuff
alias vxM='nvim ~/.xmonad/xmonad.hs'
alias vO='nvim ~/.config/openbox/rc.xml'
alias voA='nvim ~/.config/openbox/autostart.sh'
alias vwI='nvim ~/.weechat/irc.conf'
alias vW='nvim ~/.weechat/weechat.conf'
alias vi3C='nvim ~/.config/i3/config'
alias vsC='nvim ~/.ssh/config'
alias vb='nvim ~/.bashrc'
alias k='exit'

## Navigation
alias cdA='cd ~/.config/awesome'
alias cdO='cd ~/.config/openbox'
alias cdI='cd ~/.config/i3'
alias cdG='cd ~/Git'
alias cdD='cd ~/Git/dotfiles'
alias Shutdown='sudo shutdown -h now'

## Xbps
alias xbps='sudo xbps-install -S'
alias xbps-s='sudo xbps-query -Rs'
alias xbps-sync='sudo xbps-install -Suv'

## Gentoo
alias HowLong='sudo genlop -t'
alias OneShot='sudo emerge --oneshot portage'
alias I='sudo emerge -av'
alias S='sudo emerge -s'
alias sync='sudo emerge --sync'
alias Uworld='sudo emerge --ask --verbose --update --newuse --deep @world'
alias Uworld-bdeps='sudo emerge --ask --newuse --update --deep --with-bdeps=y @world'
alias Esync='sudo eix-sync'
alias Eupdate='sudo eix-update'
alias cdP='cd /etc/portage && sudo su'
alias cdU='cd /etc/portage/package.use && sudo su'
alias cdB='cd /etc/portage/package.mask && sudo su'
alias cdK='cd /etc/portage/package.accept_keywords && sudo su'
alias eM='sudo vim /etc/portage/make.conf'

## Net
alias NM='sudo /etc/init.d/NetworkManager restart'

## Pacman
alias Y='yaourt'
alias pac='sudo pacman -S'
alias pac-r='sudo pacman -R'
alias pac-s='sudo pacman -Ss'
alias pac-update='sudo pacman -Syu --force'
alias pac-sync='sudo pacman -Syy'
alias pacLog='tail -f /var/log/pacman.log'
alias Unlock='sudo rm /var/lib/pacman/db.lck'

## Misc
alias starwars='telnet towel.blinkenlights.nl'
alias ryper='ssh -fNR 7777:localhost:22 tunnel@ryper.org'

## Apps
alias reload='source'
alias irc='weechat-curses'
alias startvm='vboxmanage startvm WorkDesktop --type headless'

## News and Music
alias MP='ncmpcpp'
alias news='newsbeuter'
alias M='mpv'

## Tmux
alias tnew='tmux new -s'
alias tattach='tmux a -t'

## Remote Desktop
alias ssi="xfreerdp /cert-ignore -grab-keyboard /sec:rdp /size:1920x1080 /u:adm_chrs@ssi.ad"
alias dksund="xfreerdp /cert-ignore -grab-keyboard /sec:rdp /size:1920x1080 /u:adm_chrs@dksund.dk"
alias dksundtest="xfreerdp /cert-ignore -grab-keyboard /sec:rdp /size:1920x1080 /u:adm_chrs@dksundtest.dk"
alias ssin="xfreerdp /cert-ignore -grab-keyboard /sec:rdp /size:1920x1080 /u:chrs@ssi.ad /v:STD003516.ssi.ad &"
alias sst="xfreerdp /cert-ignore -grab-keyboard /sec:rdp /size:1920x1080 /u:adm_chrs@sst.dk"
#alias sst="xfreerdp /u:adm_chrs@sst.dk +clipboard /w:1920 /h:1080"
