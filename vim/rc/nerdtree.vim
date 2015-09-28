" shortcuts for nerd tree
" map <C-n> :NERDTreeToggle<CR>
map <silent> <C-n> :call g:WorkaroundNERDTreeToggle()<CR>
nmap <Leader>n :NERDTreeFind<CR>

function! g:WorkaroundNERDTreeToggle()
  try | NERDTreeToggle | catch | silent! NERDTree | endtry
endfunction

" close vim if the only window left open is a NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

