export PATH="$HOME/.anyenv/bin:$PATH"
export PATH="$HOME/bin:$PATH"
eval "$(anyenv init -)"

function projectGenerator(){
  open "$HOME/app/of_v0.8.4_osx_release/projectGenerator_osx/projectGenerator.app"
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
