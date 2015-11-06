#!/bin/bash

if test !$ZRC_LOADED; then
	export IS_ZSH=true

  # GIT BRANCHES
  autoload -Uz vcs_info

  # 表示フォーマットの指定
  # %b ブランチ情報
  # %a アクション名(mergeなど)
  zstyle ':vcs_info:*' formats '[%b]'
  zstyle ':vcs_info:*' actionformats '[%b|%a]'
  precmd () {
    psvar=()
    LANG=en_US.UTF-8 vcs_info
    [[ -n "$vcs_info_msg_0_" ]] && psvar[1]="$vcs_info_msg_0_"
  }
  
  # SET COLORS
  autoload colors
  colors
  PROMPT="%{$fg[green]%}%m%(!.#.$) %{$reset_color%}"
  PROMPT2="%{$fg[green]%}%_> %{$reset_color%}"
  SPROMPT="%{$fg[red]%}correct: %R -> %r [nyae]? %{$reset_color%}"
  # RPROMPT="%{$fg[cyan]%}[%~]%{$reset_color%}"
  RPROMPT="%1(v|%F{yellow}%1v%f|)%{$fg[cyan]%}[%~]%{$reset_color%}"

	source ~/.mysh/common.setting.sh
fi
