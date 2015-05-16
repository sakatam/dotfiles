dotfiles
========

wish this makes my life easy

installation for OSX
------------

install brew first

```bash
brew bundle dotfiles/Brewfile
[ -e ~/.bash_profile ] || echo source $HOME/dotfiles/bash/bashrc > ~/.bash_profile
~/dotfiles/bootstrap.sh
```

using brewfile
```bash
brew tap homebrew/bundle
brew bundle
```

### terminal setup

* terminal theme
    * import `files/Tomorrow Night.terminal`

* fonts
    * install [Ricty Diminished](http://save.sys.t.u-tokyo.ac.jp/~yusa/fonts/rictydiminished.html)
