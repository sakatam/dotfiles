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
set listchars=eol:$,trail:_,tab:>\

" Encoding settings
set fenc=utf-8
set fencs=iso-2022-jp,euc-jp,cp932,utf-8
set enc=utf-8

" Vundle
try
  set nocompatible
  filetype off
  set rtp+=~/.vim/bundle/Vundle.vim/
  call vundle#rc()
  
  Bundle 'kchmck/vim-coffee-script'
catch
endtry

syntax enable
filetype plugin indent on

