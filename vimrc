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
  Bundle 'git@github.com:chriskempson/vim-tomorrow-theme.git'
  Plugin 'fatih/vim-go'
  Plugin 'rking/ag.vim'
  Plugin 'derekwyatt/vim-scala'
  Plugin 'ap/vim-buftabline'
" Bundle 'nanotech/jellybeans.vim'
" Plugin 'elzr/vim-json'
catch
endtry

" personal settings
set rtp+=~/dotfiles/vim/
runtime! rc/*.vim

" shortcuts for CtrlPBuffer
map <C-b> :CtrlPBuffer<CR>

" shortcuts for CtrlPBuffer
map <C-a> :Ag<Space>

" use osx's clipboard
set clipboard+=unnamed

" colorscheme
colorscheme Tomorrow-Night

