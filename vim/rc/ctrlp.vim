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
nmap <silent><Leader>h  :<C-u>CtrlPCmdline<cr>
" yank history
nmap <silent><Leader>y  :<C-u>CtrlPYankring<cr>
" last mode
nmap <silent><Leader>p  :<C-u>CtrlPLastMode<cr>
let g:ctrlp_yankring_limit = 100

" list functions
nmap <silent><Leader>f  :<C-u>CtrlPFunky<cr>

" better performance?
let g:ctrlp_custom_ignore = 'tmp$\|\.git$\|\.hg$\|\.svn$\|.rvm$|.bundle$\|vendor'

