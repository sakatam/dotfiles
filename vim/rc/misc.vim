" misc settings
set ignorecase
set smartcase
set showmatch
set autoindent
set expandtab

" line end without line break
nmap % g_
nmap <Leader>c :let @+=expand('%')<CR>

" frequent actions
nmap <Leader>w :w
nmap <Leader>q :q

" toggle paste mode
set pastetoggle=<C-E>

" shorten key seq timeout
set timeoutlen=500

