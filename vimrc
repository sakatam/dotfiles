scriptencoding utf-8

" vundle
try
  set nocompatible
  filetype off
  if has('nvim')
    let s:editor_root=expand("~/.config/nvim")
  else
    let s:editor_root=expand("~/.vim")
  endif
  let &rtp = &rtp . ',' . s:editor_root . '/bundle/Vundle.vim'
  call vundle#rc()

  Bundle 'VundleVim/Vundle.vim'
  Bundle 'kchmck/vim-coffee-script'
  Bundle 'scrooloose/nerdtree'
  Bundle 'ctrlpvim/ctrlp.vim'
  Bundle 'chriskempson/vim-tomorrow-theme'
  Bundle 'ntpeters/vim-better-whitespace'
  Plugin 'fatih/vim-go'
  Plugin 'rking/ag.vim'
  Plugin 'derekwyatt/vim-scala'
  Plugin 'tpope/vim-dispatch'
  Plugin 'thoughtbot/vim-rspec'
  Plugin 'tpope/vim-fugitive'
  Plugin 'itchyny/lightline.vim'
  Plugin 'slim-template/vim-slim'
  Plugin 'vim-ruby/vim-ruby'
  Plugin '29decibel/codeschool-vim-theme'
  Plugin 'd11wtq/ctrlp_bdelete.vim'
  Plugin 'pangloss/vim-javascript'
  Plugin 'sgur/ctrlp-extensions.vim'
  Plugin 'tacahiroy/ctrlp-funky'
  Plugin 'milkypostman/vim-togglelist'
  Plugin 'AndrewRadev/linediff.vim'
  Plugin 'othree/eregex.vim'
  Plugin 'chrismccord/bclose.vim'
  Plugin 'FelikZ/ctrlp-py-matcher'
catch
  echomsg 'error occurred:' . v:exception
endtry

" line numbers
set nu

" always show statusline
set laststatus=2
set showcmd

" use osx's clipboard
set clipboard+=unnamed

" indent
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab

" change the mapleader from \ to...
let mapleader="\<Space>"

" personal settings
set rtp+=~/dotfiles/vim/
runtime! rc/*.vim

" history
set history=1000

let vimhome=expand('<sfile>:p:h')
if filereadable(vimhome . "/local.vim")
  execute 'source ' . vimhome . '/local.vim'
endif

set wildignore+=*/tmp/*,*.so,*.swp,*.zip

