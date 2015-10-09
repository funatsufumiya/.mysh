# PATHs
export PATH="$HOME/bin:$PATH"
export PATH="$HOME/.anyenv/bin:$PATH"
export PATH="$PATH:$HOME/perl5/perlbrew/bin"

eval "$(anyenv init - $SHELL)"

export LESS="-R"
export LESSOPEN="| /usr/share/source-highlight/src-hilite-lesspipe.sh %s"

# Disable Capslock
mkdir -p $HOME/.keyconfig
f=$HOME/.keyconfig/disable_capslock
if [ ! -f $f ];then
  echo "!" > $f 
  echo "! Set Caps_Lock to no symbol" >> $f
  echo "!" >> $f
  echo "remove Lock = Caps_Lock" >> $f
  echo "keysym Caps_Lock = 0x0000" >> $f
fi
xmodmap $HOME/.keyconfig

# ALIASES
alias ll="ls -l"
alias la="ls -a"
