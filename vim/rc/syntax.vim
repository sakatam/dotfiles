" syntax highlighting
syntax on
try
  colorscheme Tomorrow-Night-Bright
catch
endtry

" syntax enable
filetype plugin indent on

" indicate invisibles
set listchars=tab:▸\ ,eol:¬,trail:▯,
set list

" highlight cursor line
set cursorline
" hi clear CursorLine

highlight LineNr ctermfg=244

" make it faster
try
  set re=1
catch
endtry
set ttyfast
set lazyredraw

