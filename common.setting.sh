#!/bin/bash

# Check uid of computer
if [ ! -e "$HOME/.mysh/pc-id.txt" ]; then
  echo "[ERROR] Create ~/pc-id.txt using 'pc-id.list.txt' first!!"
  exit 1
else
  export pc_uid="$(cat $HOME/.mysh/pc-id.txt)"
fi

# Detect OS
if [ "$(uname)" = 'Darwin' ]; then
	export IS_MAC=true
else
	export IS_LINUX=true
fi

# SET COLOR ON `ls`
if test $IS_MAC; then
    export LSCOLORS=xbfxcxdxbxegedabagacad
    alias ls='ls -G'
else
    eval `dircolors ~/.colorrc`
    alias ls='ls --color=auto'
fi

# PATHs and ALIASES ============================

if [ "$pc_uid" = "acer-elementary" ]; then
	source "$HOME/.mysh/acer-elementary.setting.sh"
elif [ "$pc_uid" = "macbook-air-fu" ]; then
  source "$HOME/.mysh/macbook-air-fu.setting.sh"
fi
