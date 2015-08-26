#!/bin/bash
if test !$ZRC_LOADED; then
	export IS_ZSH=true

	# SET COLORS
	autoload colors
	colors
	PROMPT="%{$fg[green]%}%m%(!.#.$) %{$reset_color%}"
	PROMPT2="%{$fg[green]%}%_> %{$reset_color%}"
	SPROMPT="%{$fg[red]%}correct: %R -> %r [nyae]? %{$reset_color%}"
	RPROMPT="%{$fg[cyan]%}[%~]%{$reset_color%}"

	source ~/.mysh/common_setting
fi
