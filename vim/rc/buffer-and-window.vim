set hidden
nnoremap <silent>tn :bnext<CR>
nnoremap <silent>tp :bprev<CR>
nnoremap <silent>tt :b#<CR>
" buffer close
nnoremap <silent>tc :bp\|bd #<CR>

set fillchars=""

" move cursor by window number
for n in range(1,9)
  exe 'nmap <C-w>'.n.' :'.n.'wincmd w<CR>'
endfor

