inoremap <c-Space> <c-x><c-o>

" Use <TAB> to select the popup menu:
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" Map Esc to exit terminal mode
tnoremap <Esc> <C-\><C-n>

" func 
" " Open default editor for file browsing
" nnoremap <Leader>nn 
