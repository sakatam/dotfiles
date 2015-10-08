" syntax highlighting
syntax on
try
  colorscheme Tomorrow-Night
catch
endtry

" syntax enable
filetype plugin indent on

" indicate invisibles
set listchars=tab:▸\ ,eol:¬,trail:▯,
set list

" highlight cursor line
set cursorline
hi clear CursorLine

" make it faster
set re=1
set ttyfast
set lazyredraw

