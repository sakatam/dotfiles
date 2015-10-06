" insert modeで開始
let g:unite_enable_start_insert = 1

" 大文字小文字を区別しない
let g:unite_enable_ignore_case = 1
let g:unite_enable_smart_case = 1

" grep
nnoremap <silent><Leader>g  :<C-u>Unite grep:. -buffer-name=search-buffer<CR>

" カーソル位置の単語をgrep検索
nnoremap <silent><Leader>cg :<C-u>Unite grep:. -buffer-name=search-buffer<CR><C-R><C-W><C-A>

" grep検索結果の再呼出
nnoremap <silent><Leader>r  :<C-u>UniteResume search-buffer<CR>

" unite grep に ag(The Silver Searcher) を使う
if executable('ag')
  let g:unite_source_grep_command = 'ag'
  let g:unite_source_grep_default_opts = '-i --nogroup --column --nocolor --color-match ''1;33'''
  let g:unite_source_grep_recursive_opt = ''
endif

" command history
nnoremap <silent><Leader>h  :<C-u>Unite history/command<cr>

" enable yank history
let g:unite_source_history_yank_enable = 1

" cursorline highlight
" let g:unite_cursor_line_highlight = 'Search'
" let g:unite_abbr_highlight = 'StatusLine'

autocmd FileType unite call s:unite_settings()
function! s:unite_settings()
  imap <buffer> <C-j>   <Plug>(unite_select_next_line)
  imap <buffer> <C-k>   <Plug>(unite_select_previous_line)
endfunction

