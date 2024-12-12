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
      alias ls='ls -tG'
      alias ll="ls -l"
      alias la="ls -a"
      alias lla="ls -la"
  else
      eval `dircolors ~/.colorrc`
      alias ls='ls -t --color=auto'
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

  function show-viewport(){
    echo '<meta name="viewport" content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no">'
    echo ''
    echo '<style>'
    echo 'body {'
    echo '  -webkit-text-size-adjust: 100%'
    echo '}'
    echo '</style>'
  }

  function ip(){
    if [ $# -ne 0 ]; then
      dig +short $1
    else
      echo "Usage: ip [host-name]"
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

  if [ -n "$ZSH_VERSION" ]; then
  # if test $IS_ZSH; then
    # antigenの設定

    source "$HOME/bin/antigen.zsh"

    antigen use oh-my-zsh

    antigen bundle <<EOF

zsh-users/zsh-completions src
git
heroku
pip
lein
command-not-found
zsh-autosuggestions

EOF

    # 履歴を保存するファイル
    HISTFILE=$HOME/.zhistory

    # メモリ内の履歴の数
    HISTSIZE=1000000

    # $HISTFILE に保存される履歴の数
    SAVEHIST=1000000

    antigen theme robbyrussell 

    antigen bundle zsh-users/zsh-syntax-highlighting
    antigen bundle zsh-users/zsh-autosuggestions
    antigen bundle vi-mode
    antigen apply

    # END of antigenの設定

    autoload -U up-line-or-beginning-search
    autoload -U down-line-or-beginning-search
    zle -N up-line-or-beginning-search
    zle -N down-line-or-beginning-search

    bindkey '^A' beginning-of-line
    bindkey '^E' end-of-line
    bindkey '^[[A' up-line-or-beginning-search
    bindkey '^[[B' down-line-or-beginning-search
  fi

  # PATHs and ALIASES ============================

  source "$HOME/.mysh/$pc_uid.setting.sh"
fi
