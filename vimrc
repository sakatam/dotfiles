scriptencoding utf-8

" vundle
try
  set nocompatible
  filetype off
  set rtp+=~/.vim/bundle/Vundle.vim/
  call vundle#rc()

  Bundle 'nanotech/jellybeans.vim'
  Bundle 'kchmck/vim-coffee-script'
  Bundle 'scrooloose/nerdtree'
  Bundle 'jistr/vim-nerdtree-tabs'
  Bundle 'ctrlpvim/ctrlp.vim'
  Bundle 'mkitt/tabline.vim'
  Plugin 'fatih/vim-go'
  Plugin 'elzr/vim-json'
  Plugin 'rking/ag.vim'
catch
endtry

" personal settings
set rtp+=~/dotfiles/vim/
runtime! rc/*.vim

" shortcuts for nerd tree
map <C-n> :NERDTreeTabsToggle<CR>

" use osx's clipboard
set clipboard+=unnamed

