nnoremap <silent> <leader>      :<c-u>WhichKey '<Space>'<CR>
nnoremap <silent> <localleader> :<c-u>WhichKey  '\'<CR>

let g:which_key_map = {}
let g:which_key_map.s = {
      \ 'name' : 'Slime action' ,
      \ 't'    : 'Open terminal for buffer',
      \ 'a'    : 'Send paragraph',
      \ 's'    : 'Send current line',
      \}
let g:which_key_map.n = {
      \ 'name'     : 'Open bookmark',
      \}
let g:which_key_map.e = {
      \ 'name'     : 'Git actions',
      \ 'e' : 'Open fugitve Git',
      \ 'p' : 'Git pull',
      \ 'f' : 'Git fetch',
      \ 'h' : 'Git push',
      \ 'c' : 'Git checkout',
      \ 'm' : 'Git commit with no-verify',
      \}
let g:which_key_map.g = {
      \ 'name' : 'Buffer actions',
      \ 'g' : 'Buf selection',
      \ 'q' : 'Delete buffer',
      \ 'j' : 'Go to prev buffer',
      \ 'k' : 'Go to next buffer',
      \}
" let g:which_key_map.f = 'Find file in cwd'
let g:which_key_map.h = 'Go to win on the left'
let g:which_key_map.j = 'Go to win below'
let g:which_key_map.k = 'Go to win above'
let g:which_key_map.l = 'Go to win on the right'

let g:which_key_map.p = 'forward paste from clipboard'
let g:which_key_map.P = 'backward paste from clipboard'
call which_key#register('<Space>', "g:which_key_map")
