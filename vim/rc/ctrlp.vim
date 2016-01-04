" no max file limit
let g:ctrlp_max_files = 0
let g:ctrlp_match_window = 'bottom,order:btt,min:1,max:15,results:30'

map <C-i> :CtrlPBuffer<cr>
map <C-m> :CtrlPMixed<cr>

" unmap <CR>
nmap <CR> :CtrlPBuffer<cr>

let g:ctrlp_bdelete_key = '@'
call ctrlp_bdelete#init()

" command history
nnoremap <silent><Leader>h  :<C-u>CtrlPCmdline<cr>
" yank history
nnoremap <silent><Leader>p  :<C-u>CtrlPYankring<cr>
let g:ctrlp_yankring_limit = 100

" list functions
nnoremap <silent><Leader>f  :<C-u>CtrlPFunky<cr>

