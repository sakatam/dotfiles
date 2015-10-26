set hidden
nnoremap <silent>bn :bnext<CR>
nnoremap <silent>bp :bprev<CR>
nnoremap <silent>bb :b#<CR>
" buffer close
nnoremap <silent>bc :bp\|bd #<CR>

set fillchars=""

" move cursor by window number
for n in range(1,9)
  exe 'nmap <C-w>'.n.' :'.n.'wincmd w<CR>'
endfor

