DOTFILES := $(shell pwd -P)
NVIM_CONF := "${HOME}/.config/nvim"

all: dirs links bash_profile brew

dirs:
	[ -d $(NVIM_CONF) ] || mkdir -p $(NVIM_CONF)

links:
	[ -e ${HOME}/.editrc       ] || ln -s $(DOTFILES)/editrc ${HOME}/.editrc
	[ -e ${HOME}/.inputrc      ] || ln -s $(DOTFILES)/inputrc ${HOME}/.inputrc
	[ -e ${HOME}/.vimrc        ] || ln -s $(DOTFILES)/vimrc ${HOME}/.vimrc
	[ -e $(NVIM_CONF)/init.vim ] || ln -s $(DOTFILES)/vimrc $(NVIM_CONF)/init.vim
	[ -e ${HOME}/.gemrc        ] || ln -s $(DOTFILES)/gemrc ${HOME}/.gemrc
	[ -e ${HOME}/.tmux.conf    ] || ln -s $(DOTFILES)/tmux.conf ${HOME}/.tmux.conf
	[ -e ${HOME}/.gitconfig    ] || ln -s $(DOTFILES)/git/gitconfig ${HOME}/.gitconfig
	# ln -sf $(DOTFILES)/ackrc ${HOME}/.ackrc
	# ln -sf $(DOTFILES)/screenrc ${HOME}/.screenrc
	# ln -sf $(DOTFILES)/git/gitconfig-boxen ${HOME}/.gitconfig-boxen
	# ln -sf $(DOTFILES)/powconfig ${HOME}/.powconfig

bash_profile:
	[ -e ${HOME}/.bash_profile ] || echo source ${DOTFILES}/bash/bashrc > ${HOME}/.bash_profile

brew:
	[[ -z `which -s brew` ]] || /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
	[[ -n `brew ls --version ag`     ]] || brew install ag
	[[ -n `brew ls --version git`    ]] || brew install git
	[[ -n `brew ls --version neovim` ]] || brew install neovim/neovim/neovim
	[[ -n `brew ls --version tmux`   ]] || brew install tmux

