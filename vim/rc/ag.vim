if executable('ag')
   " use ag for ctrlp
   let g:ctrlp_user_command = 'ag %s -l'
   " keybind
   nnoremap \ :Ag<SPACE>
 endif
