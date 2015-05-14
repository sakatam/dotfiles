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
  Plugin 'fatih/vim-go'
  Plugin 'elzr/vim-json'
catch
endtry

" personal settings
set rtp+=~/dotfiles/vim/
runtime! rc/*.vim

" shortcuts
map <C-n> :NERDTreeToggle<CR>

