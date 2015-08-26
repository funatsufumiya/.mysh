export LLVM_INCLUDE_DIR=-"/usr/local/opt/llvm/include"
export LLVM_LIBDIR="/usr/local/opt/llvm/lib"

export PKG_CONFIG_PATH="/usr/lib/pkgconfig"
export PKG_CONFIG_PATH="$PKG_CONFIG_PATH:/opt/X11/lib/pkgconfig"

export GTK_CFLAGS="pkg-config --cflags gtk+-3.0"
export GTK_LIBS="pkg-config --libs gtk+-3.0"

export JAVA_HOME_6=`/usr/libexec/java_home -v '1.6*'`
export JAVA_HOME_7=`/usr/libexec/java_home -v '1.7*'`
export JAVA_HOME_8=`/usr/libexec/java_home -v '1.8*'`

export JAVA_HOME=$JAVA_HOME_8
export CLASSPATH=".:/usr/local/lib/antlr-4.4-complete.jar:$CLASSPATH"

export _JAVA_OPTIONS="-Dfile.encoding=UTF-8"
export CLOJURE_JAR="/usr/local/share/clojure-1.6.0.jar"
export LC_ALL=ja_JP.UTF-8
export PYTHONPATH="~/.pyenv/versions/3.4.0/lib/python3.4/site-packages/":$PYTHONPATH
export GOROOT=/usr/local/opt/go/libexec/
export GOPATH="$HOME/.go"
export CONFIGURE_OPTS="--with-readline-dir=$(brew --prefix readline) --with-openssl-dir=$(brew --prefix openssl)"
export CLOJURESCRIPT_HOME=~/lab/clojurescript/
export MAC_SDK="/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX10.9.sdk/"
export PYTHONPATH=$HOME/.pyenv/versions/3.4.0/lib/python3.4/
export NODE_PATH="/usr/local/lib/node_modules"
export CHICKEN_PATH="$HOME/lab/chicken-4.9.0.1"
export KOTLIN_HOME="$HOME/lab/kotlinc"
export MONO_GAC_PREFIX="/usr/local"
export TESSDATA_PREFIX="/usr/local/share"
# export LIBEV_CLFAGS="-I/usr/local/include"
# export LIBEV_LIBS="-L/usr/local/lib"
# export LIBEV_CLFAGS="-I/usr/local/Cellar/libev/4.15/include"
# export LIBEV_LIBS="-L/usr/local/Cellar/libev/4.15/lib"


export PATH=/usr/local/bin:$PATH
export PATH=/Applications/Julia-0.2.1.app/Contents/Resources/julia/bin:$PATH
export PATH=~/bin:$PATH
# export PATH=~/.rbenv/shims:$PATH
# export PATH=~/.rbenv/bin:$PATH
# export PATH=~/.pyenv/shims:$PATH
# export PATH=~/.pyenv/bin:$PATH
export PATH=$PATH:~/Qt/5.1.1/clang_64/bin
export PATH=$PATH:~/Library/Flex/flex_sdk_4.6/bin
export PATH=/usr/texbin:$PATH
export PATH=$PATH:/sw/bin
export PATH=~/.go/bin:$PATH
# export PATH=/usr/local/opt/qt/bin/:$PATH
export PATH=/usr/local/opt/qt5/bin/:$PATH
export PATH=~/lab/kotlinc/bin:$PATH
export PATH=$PATH:"/usr/local/Cellar/lcdf-typetools/2.104/bin"
export PATH=$PATH:"/Applications/Racket_v6.1.1/bin"
export PATH=$PATH:"/usr/local/Cellar/chicken/4.9.0.1/bin"
export PATH=/usr/local/opt/gettext/bin:$PATH
export PATH=~/lab/android-sdk-macosx/platform-tools:$PATH

alias antlr4='java -jar /usr/local/lib/antlr-4.4-complete.jar'
alias grun='java org.antlr.v4.runtime.misc.TestRig'

# alias gcc="/usr/local/bin/gcc-4.9"

alias java6="$JAVA_HOME_6/bin/java"
alias javac6="$JAVA_HOME_6/bin/javac"
alias jar6="$JAVA_HOME_6/bin/jar"

alias java7="$JAVA_HOME_7/bin/java"
alias javac7="$JAVA_HOME_7/bin/javac"
alias jar7="$JAVA_HOME_7/bin/jar"

alias java8="$JAVA_HOME_8/bin/java"
alias javac8="$JAVA_HOME_8/bin/javac"
alias jar8="$JAVA_HOME_8/bin/jar"
alias rake="/usr/local/bin/rake"

alias tcsh="/usr/local/bin/tcsh"
alias mou="open -a Mou"
alias 0xED="open -a 0xED"
alias openfl="haxelib run openfl"
alias teapot="java -jar $HOME/lab/jars/teapot-0.12.0b.jar"
alias xtend="java -jar $HOME/lab/jars/xtend.jar"
alias subl="/Applications/Sublime\ Text\ 2.app/Contents/SharedSupport/bin/subl"
alias subl3="/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl"
alias picross="ruby $HOME/lab/picross-solver-tkido/picross.rb"
alias node-webkit="/Applications/node-webkit-v0.10.2-osx-x64/node-webkit.app/Contents/MacOS/node-webkit"
alias shoes="/Applications/Shoes.app/Contents/MacOS/shoes"
alias casl2="java -jar $HOME/lab/CASL2/casl2.jar"
alias comet="java -jar $HOME/lab/CASL2/run.jar"
alias tree="ls -R | grep ":$" | sed -e 's/:$//' -e 's/[^-][^\/]*\//--/g' -e 's/^/   /' -e 's/-/|/'"
alias zsh=/usr/local/bin/zsh
alias getcomposer="curl -sS https://getcomposer.org/installer | php"
alias ssh-login="ssh sakura-dic@ssh170.heteml.jp -p 2222"
alias composer="php composer.phar"
alias init_composer="curl -s http://getcomposer.org/installer | php"
alias clj="java -cp src:classes:$CLOJURE_JAR clojure.main"
alias cljd="drip -jar $CLOJURE_JAR"
alias clojure="clj"
alias mbash="subl ~/.bashrc"
alias sbash="source ~/.bashrc"
alias quicklisp="sbcl --load ~/bin/quicklisp.lisp"
alias gvim="open -a MacVim"
alias macvim="open -a MacVim"
alias xulrunner="/Library/Frameworks/XUL.framework/Versions/Current/xulrunner"
alias flashlog="tail -f /Users/funatsu/Library/Preferences/Macromedia/Flash\ Player/Logs/flashlog.txt"
# alias copy-www="rsync -a --exclude '.git' www/ ../atmarksharp.www/"

function head-range() {
  head -n $1 | tail -n $2
}

case "${OSTYPE}" in
darwin*)
  alias ls="ls -G"
  alias ll="ls -l"
  alias la="ls -a"
  alias lla="ls -la"
  ;;
linux*)
  alias ls='ls --color'
  alias ll='ls -l --color'
  alias la='ls -a --color'
  alias lla='ls -la --color'
  ;;
esac

PERL_MB_OPT="--install_base \"/Users/funatsu/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/Users/funatsu/perl5"; export PERL_MM_OPT;
