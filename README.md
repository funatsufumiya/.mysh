# ~/.mysh .... .bashrc and .zshrc portable

## Install

***You must backup your `.bashrc` and etc!!!***

```
curl -L git.io/antigen > ~/bin/antigen.zsh
chmod +x ~/bin/antigen.zsh

git clone http://github.com/funatsufumiya/.mysh ~/.mysh

~/.mysh/install.sh

cp ~/.mysh/pc-id.list.txt ~/.mysh/pc-id.txt
vim ~/.mysh/pc-id.txt # select your pc
```
