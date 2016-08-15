#!/bin/bash
if test !$BASHRC_LOADED; then
	export IS_BASH=true
	export IS_ZSH=false
  source ~/.mysh/common.setting.sh
fi
