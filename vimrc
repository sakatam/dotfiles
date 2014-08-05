scriptencoding utf-8

syntax on
try
  colorscheme jellybeans
catch
endtry

set ignorecase
set smartcase
set showmatch
set autoindent
set expandtab

" Indicate invisibles
set listchars=tab:>-,eol:$,trail:~,
set list

" Encoding settings
set fenc=utf-8
set fencs=utf-8,iso-2022-jp,euc-jp,cp932
set enc=utf-8

" Vundle
try
  set nocompatible
  filetype off
  set rtp+=~/.vim/bundle/Vundle.vim/
  call vundle#rc()
  
  Bundle 'kchmck/vim-coffee-script'
  Plugin 'fatih/vim-go'
  Plugin 'elzr/vim-json'
catch
endtry

syntax enable
filetype plugin indent on

