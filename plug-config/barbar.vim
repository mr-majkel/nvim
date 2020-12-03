let bufferline = {}
let bufferline.icons = 'numbers'
let bufferline.semantic_letters = v:false
let bufferline.letters = 'aoeuhtnsidmwvzAOEUIDHTNSFGCRLBMWVQJKXPY'

" Configure icons on the bufferline.
let bufferline.icon_separator_active = '▎'
let bufferline.icon_separator_inactive = '▎'
let bufferline.icon_close_tab = 'X'
let bufferline.icon_close_tab_modified = '●'

nnoremap <silent> <leader>gg :BufferPick<CR>
nnoremap <silent> <leader>gh :BufferMovePrevious<CR>
nnoremap <silent> <leader>gl :BufferMoveNext<CR>
