nnoremap <silent> <leader>      :<c-u>WhichKey '<Space>'<CR>
nnoremap <silent> <localleader> :<c-u>WhichKey  '\'<CR>

let g:which_key_map = {}
let g:which_key_map.s = {
      \ 'name' : '+Slime action' ,
      \ 't'    : 'Open terminal for buffer',
      \ 'a'    : 'Send paragraph',
      \ 's'    : 'Send current line',
      \}
let g:which_key_map.n = {
      \ 'name'     : '+Open bookmark',
      \}


call which_key#register('<Space>', "g:which_key_map")
