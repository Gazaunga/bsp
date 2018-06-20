#!/usr/bin/zsh

setopt autocd extendedglob
bindkey -v
zstyle :compinstall filename '/home/gazbit/.zshrc'

autoload -Uz compinit
compinit
