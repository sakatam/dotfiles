# linking

DOTFILES_DIR=`pwd -P`

ln -sf $DOTFILES_DIR/ackrc $HOME/.ackrc
ln -sf $DOTFILES_DIR/editrc $HOME/.editrc
ln -sf $DOTFILES_DIR/inputrc $HOME/.inputrc
ln -sf $DOTFILES_DIR/screenrc $HOME/.screenrc
ln -sf $DOTFILES_DIR/vimrc $HOME/.vimrc
ln -sf $DOTFILES_DIR/gemrc $HOME/.gemrc
ln -sf $DOTFILES_DIR/atom $HOME/.atom
ln -sf $DOTFILES_DIR/tmux.conf $HOME/.tmux.conf
ln -sf $DOTFILES_DIR/powconfig $HOME/.powconfig

ln -sf $DOTFILES_DIR/git/gitconfig $HOME/.gitconfig
ln -sf $DOTFILES_DIR/git/gitconfig-boxen $HOME/.gitconfig-boxen
