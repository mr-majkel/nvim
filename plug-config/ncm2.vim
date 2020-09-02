" limit of autocomplete options to display
let g:ncm2#total_popup_limit = 10
" ncm2-ultisnips 
" enable ncm2 for all buffers
autocmd BufEnter *.r,*.R,*.Rmd,*.rmd call ncm2#enable_for_buffer()

