scriptencoding utf-8

" vundle
try
  set nocompatible
  filetype off
  set rtp+=~/.vim/bundle/Vundle.vim/
  call vundle#rc()

  Bundle 'kchmck/vim-coffee-script'
  Bundle 'scrooloose/nerdtree'
  Bundle 'ctrlpvim/ctrlp.vim'
  Bundle 'chriskempson/vim-tomorrow-theme'
  Plugin 'fatih/vim-go'
  Plugin 'rking/ag.vim'
  Plugin 'derekwyatt/vim-scala'
  Plugin 'ap/vim-buftabline'
  Plugin 'tpope/vim-dispatch'
  Plugin 'thoughtbot/vim-rspec'
  Plugin 'tpope/vim-fugitive'
  Plugin 'vim-ruby/vim-ruby'
catch
endtry

" line numbers
set nu

" personal settings
set rtp+=~/dotfiles/vim/
runtime! rc/*.vim

" use osx's clipboard
set clipboard+=unnamed

" indent
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab

" change the mapleader from \ to ,
let mapleader=","

