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
    
    if [ $(uname -a | grep -c Ubuntu) -gt 0 ]; then
      export IS_UBUNTU=true
    else
      export IS_UBUNTU=false
    fi
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

  alias mbash="vim $HOME/.mysh/$pc_uid.setting.sh"
  alias sbash="exec $SHELL -l"
  
  function git-push(){
    if [ $# -gt 0 ]; then
      git add --all && git commit -m "$1" && git push
    else
      echo "Usage: git-push [commit-message]"
    fi
  }

  if test $IS_UBUNTU; then
    alias ai="sudo apt-get install"
    alias au="sudo apt-get update"
    alias aar="sudo add-apt-repository"
    alias ar="sudo apt-get remove"
    alias as="apt-cache search"

    alias pbcopy="xsel --clipboard --input"
  fi

  # PATHs and ALIASES ============================

  if [ "$pc_uid" = "acer-elementary" ]; then
  	source "$HOME/.mysh/acer-elementary.setting.sh"
  elif [ "$pc_uid" = "macbook-air-fu" ]; then
    source "$HOME/.mysh/macbook-air-fu.setting.sh"
  fi
fi
