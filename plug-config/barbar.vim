let bufferline = {}
let bufferline.semantic_letters = v:false
let bufferline.letters = 
  \ 'asdfjkl;ghnmxcbziowerutyqpASDFJKLGHNMXCBZIOWERUTYQP'
let bufferline.icons = v:false
nnoremap <silent> <leader>gg :BufferPick<CR>
nnoremap <silent> <leader>gh :BufferMovePrevious<CR>
nnoremap <silent> <leader>gl :BufferMoveNext<CR>
