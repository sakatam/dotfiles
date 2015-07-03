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
  Bundle 'ctrlpvim/ctrlp.vim'
  Bundle 'git@github.com:chriskempson/vim-tomorrow-theme.git'
  Plugin 'fatih/vim-go'
  Plugin 'rking/ag.vim'
" Bundle 'mkitt/tabline.vim'
" Plugin 'elzr/vim-json'
catch
endtry

" personal settings
set rtp+=~/dotfiles/vim/
runtime! rc/*.vim

" shortcuts for nerd tree
map <C-n> :NERDTreeToggle<CR>

" shortcuts for CtrlPBuffer
map <C-b> :CtrlPBuffer<CR>

" use osx's clipboard
set clipboard+=unnamed

"" colorscheme
colorscheme Tomorrow-Night
