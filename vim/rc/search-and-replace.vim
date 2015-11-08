" substitute cursor word
nnoremap <Leader>s :%s/\<<C-r><C-w>\>//g<Left><Left>

" The Silver Searcher
if executable('ag')
  " Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -i -l --nocolor -g ""'
  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0

  " command -nargs=+ -complete=file -bar Ag silent! grep! <args>|cwindow|redraw!
  " bind \ (backward slash) to grep shortcut
  nnoremap \ :Ag<space>

  " bind K to grep word under cursor
  nnoremap K :Ag<space>"\b<C-R><C-W>\b"
endif


