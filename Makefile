DOTFILES := $(shell pwd -P)

all: links bash_profile brew

links:
	ln -sf $(DOTFILES)/editrc ${HOME}/.editrc
	ln -sf $(DOTFILES)/inputrc ${HOME}/.inputrc
	ln -sf $(DOTFILES)/vimrc ${HOME}/.vimrc
	ln -sf $(DOTFILES)/gemrc ${HOME}/.gemrc
	ln -sf $(DOTFILES)/tmux.conf ${HOME}/.tmux.conf
	ln -sf $(DOTFILES)/git/gitconfig ${HOME}/.gitconfig
	# ln -sf $(DOTFILES)/ackrc ${HOME}/.ackrc
	# ln -sf $(DOTFILES)/screenrc ${HOME}/.screenrc
	# ln -sf $(DOTFILES)/git/gitconfig-boxen ${HOME}/.gitconfig-boxen
	# ln -sf $(DOTFILES)/atom ${HOME}/.atom
	# ln -sf $(DOTFILES)/powconfig ${HOME}/.powconfig

bash_profile:
	[ -e ${HOME}/.bash_profile ] || echo source ${DOTFILES}/dotfiles/bash/bashrc > ${HOME}/.bash_profile

brew:
	[[ -z `which -s brew` ]] || /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
	[[ -n `brew ls --version ag`     ]] || brew install ag
	[[ -n `brew ls --version git`    ]] || brew install git
	[[ -n `brew ls --version neovim` ]] || brew install neovim
	[[ -n `brew ls --version tmux`   ]] || brew install tmux

