dotfiles
========

wish this makes my life easy

installation
------------

## OSX

install brew first

```bash
brew bundle dotfiles/Brewfile 
[ -e ~/.bash_profile ] || echo source $HOME/dotfiles/bash/bashrc > ~/.bash_profile
~/dotfiles/bootstrap.sh
```


for better terminal colors
https://github.com/tomislav/osx-terminal.app-colors-solarized
