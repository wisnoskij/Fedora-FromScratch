#!/usr/bin/env bash

#Git aliases
alias gpush='git push'
alias gpull='git pull'
alias gcommit='git commit -a'
alias gcomp='git commit -a && git push'
alias gpushc='git commit -a && git push'
alias gadd='git add'
alias gaddall='git add *'
alias gclone='git clone --depth=1'
alias gclall='git clone'
alias gcloneAll='git clone'

#General aliases
alias clls='clear; ls'
alias update='sudo dnf update'
alias install='sudo dnf install'
alias search='dnf search'
alias ..='cd ..'
alias ...='cd ../..'
alias stop='kill -9 %1'
alias ls='lsd'

#BASH
alias sourcebash='source $HOME/.bashrc'
alias srcb='source $HOME/.bashrc'

#VIM
alias v='nvim'
alias vimplug='cd $vimplug'
alias vimcfg='cd $vimcfg'

#starship
alias switch='${sscfg}sw.bsh'
