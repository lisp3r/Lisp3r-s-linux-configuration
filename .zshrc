# Created by lisp3r for 5.7.1

autoload -U compinit
compinit

autoload -U promptinit
promptinit

export PROMPT='%B%F{240} %~%f%b '

#setopt RCS
setopt HIST_IGNORE_DUPS
setopt menucomplete
zstyle ':completion:*' menu select=1 _complete _ignored _approximate

## Aliases
alias ll="ls -la"
alias ls='ls --color=auto'

## pacman
alias pacman-update="sudo pacman -Syu"
alias pacman-clean-deps="sudo pacman -Rsn $(pacman -Qdt | awk '{ print $1 }')"

## zsh
alias zshconf="nano ~/.zshrc"
alias zsh-update="source ~/.zshrc"

## dwm
alias rebuild="makepkg -csif --skipchecksums --noconfirm"
dwmpath="/opt/aurs/dwm/"
alias dwmcfg="nano ${dwmpath}/config.h"
alias dwmbld="cd ${dwmpath} && rebuild && cd -"

## black arch
## https://blackarch.org/downloads.html#install-repo
alias blackarch-all="sudo pacman -Sgg | grep blackarch | cut -d' ' -f2 | sort -u"
alias blackarch-categories="sudo pacman -Sg | grep blackarch"
## To install a category of tools, run
## sudo pacman -S blackarch-<category>

# alias nmcli-stop-docker="nmcli con down $(nmcli | grep br- | awk -F ':' '{print $1}' | grep -v \")"
# alias alacritty="/opt/alacritty/target/release/alacritty --config-file /opt/alacritty/alacritty.yml"
alias kali='vboxmanage startvm Kali'

# docker exec -it 052 bash
# docker run -p 27017:27017 -v /mnt/docker-mongo:/data/db --rm -d mongo

alias jupyter-notebook="jupyter-notebook --notebook-dir=~/jupyter-files"
alias android-mount="jmtpfs ~/android_mount"

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000000
SAVEHIST=1000000
setopt appendhistory autocd extendedglob notify
unsetopt beep nomatch

# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/lisp3r/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

source ~/.zpath

eval $(thefuck --alias)
