
export PATH="/usr/local/bin:$PATH"
export PATH="$HOME/.anyenv/bin:$PATH"
export PATH="$HOME/bin:$PATH"
eval "$(anyenv init -)"

export PATH="$HOME/app/depot_tools:$PATH"
export PATH="$HOME/app/mirah-0.0.12/bin:$PATH"
export PATH="$PATH:/usr/local/pear/bin"
export PATH="$PATH:$HOME/.composer/vendor/bin/"

export GOPATH="$HOME/gopath/"

export FFMPEG_MP3_OPTIONS="-codec:a libmp3lame -qscale:a 2"
export ENHANCD_FILTER="fzf:peco:gof"

source "$HOME/bin/antigen.zsh"

alias java="/Users/fu/.anyenv/envs/jenv/shims/java"
alias macvim="open -a MacVim"
alias "aria-x3"="aria2c --conf-path=$HOME/.aria2/x3.conf"
alias "aria-x5"="aria2c --conf-path=$HOME/.aria2/x5.conf"
alias "aria-x7"="aria2c --conf-path=$HOME/.aria2/x7.conf"
alias "aria-x10"="aria2c --conf-path=$HOME/.aria2/x10.conf"
alias a="aria-x10"

function projectGenerator(){
  # open "$HOME/app/of_v0.8.4_osx_release/projectGenerator_osx/projectGenerator.app"
  open "$HOME/app/of_v0.9.3_osx_release/projectGenerator-osx/projectGenerator.app"
}

function total-size(){
  if [ $# -ne 0 ]; then
    du -ch $1 | tail -n 1
  else
    echo "Usage: total-size [path]"
  fi
}

function ip(){
if [ $# -ne 0 ]; then
  dig +short $1
else
  echo "Usage ip [hostname]"
fi
}

antigen use oh-my-zsh

antigen bundle <<EOF

zsh-users/zsh-completions src
git
heroku
pip
lein
command-not-found

EOF

antigen theme robbyrussell 

antigen bundle zsh-users/zsh-syntax-highlighting
antigen apply
