" shortcuts for ag
map <C-a> :Ag<Space>

" use ag for ctrlp
if executable('ag')
  let g:ctrlp_use_caching=0
  let g:ctrlp_user_command='ag %s -i --nocolor --nogroup -g ""'
  " keybind
  nnoremap \ :Ag<SPACE>
endif
