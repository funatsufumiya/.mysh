#!/bin/bash

# Check uid of computer
if [ ! -e "$HOME/.mysh/pc-id.txt" ]; then
  echo "[ERROR] Create ~/.mysh/pc-id.txt using '~/.mysh/pc-id.list.txt' first!!"
  export mysh_exited=true
else
  export pc_uid="$(cat $HOME/.mysh/pc-id.txt)"
fi

if [ ! "$mysh_exited" ]; then
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
      alias ll="ls -l"
      alias la="ls -a"
      alias lla="ls -la"
  else
      eval `dircolors ~/.colorrc`
      alias ls='ls --color=auto'
      alias ll='ls -l'
      alias la='ls -a'
      alias lla='ls -la'
  fi

  # PATHs and ALIASES ============================

  if [ "$pc_uid" = "acer-elementary" ]; then
  	source "$HOME/.mysh/acer-elementary.setting.sh"
  elif [ "$pc_uid" = "macbook-air-fu" ]; then
    source "$HOME/.mysh/macbook-air-fu.setting.sh"
  fi
fi