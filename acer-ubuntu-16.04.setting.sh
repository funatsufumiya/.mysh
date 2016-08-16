# PATHs
export PATH="$HOME/bin:$PATH"
export PATH="$HOME/.anyenv/bin:$PATH"
export PATH="$HOME/.anyenv/envs/rbenv/shims:$PATH"
export PATH="$HOME/.anyenv/envs/pyenv/shims:$PATH"
export PATH="$HOME/.anyenv/envs/jenv/shims:$PATH"
export PATH="$HOME/.anyenv/envs/phpenv/shims:$PATH"
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
alias ls="ls --color=auto -t"
alias ll="ls -l"
alias la="ls -a"
alias lla="ls -la"
alias pbcopy='xsel --clipboard --input'
alias pbpaste='xsel --clipboard --output'
alias open='xdg-open &>/dev/null'
alias less="/usr/local/share/vim/vim74/macros/less.sh"
alias ai="sudo apt-get install"
alias au="sudo apt-get update"
alias as="apt-cache search"
alias aa="sudo add-apt-repository"
