#!/bin/sh

echo -n "[WARN] Really delete bashrc, zshrc and etc? (Yes/n) "
read answer
if [ "$answer" != "Yes" ]
then
    echo "canceled"
    exit 1
fi

# rm -I ~/.bash_profile
# rm -I ~/.zsh_profile
# rm -I ~/.bashrc
# rm -I ~/.zshrc
# rm -I ~/.colorrc

mv ~/.bash_profile ~/.bash_profile.bak
mv ~/.zsh_profile ~/.zsh_profile.bak
mv ~/.bashrc ~/.bashrc.bak
mv ~/.zshrc ~/.zshrc.bak
mv ~/.colorrc ~/.colorrc.bak

ln -s ~/.mysh/bash_profile ~/.bash_profile
ln -s ~/.mysh/zsh_profile ~/.zsh_profile
ln -s ~/.mysh/bashrc ~/.bashrc
ln -s ~/.mysh/zshrc ~/.zshrc
ln -s ~/.mysh/colorrc ~/.colorrc

echo "installed"
