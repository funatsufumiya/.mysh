#!/bin/sh

echo -n "[WARN] Really delete bashrc, zshrc and etc? (Yes/n) "
read answer
if [ "$answer" != "Yes" ]
then
    echo "canceled"
    exit 1
fi

rm -rf ~/.bash_profile
rm -rf ~/.zsh_profile
rm -rf ~/.bashrc
rm -rf ~/.zshrc
rm -rf ~/.colorrc

ln -s ~/.mysh/bash_profile ~/.bash_profile
ln -s ~/.mysh/zsh_profile ~/.zsh_profile
ln -s ~/.mysh/bashrc ~/.bashrc
ln -s ~/.mysh/zshrc ~/.zshrc
ln -s ~/.mysh/colorrc ~/.colorrc

echo "installed"
