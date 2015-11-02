" no max file limit
let g:ctrlp_max_files = 0
let g:ctrlp_match_window = 'bottom,order:btt,min:1,max:15,results:30'

" nmap <leader>p :CtrlP<cr>
nnoremap <leader>p :CtrlP<cr>
nnoremap <leader>o :CtrlP<cr>
map <C-l> :CtrlPBuffer<cr>
map <C-m> :CtrlPMixed<cr>
unmap <CR>

if executable('ag')
  let g:ctrlp_use_caching=0
  let g:ctrlp_user_command='ag %s -l --nocolor -g ""'
endif

let g:ctrlp_bdelete_key = '@'
call ctrlp_bdelete#init()

