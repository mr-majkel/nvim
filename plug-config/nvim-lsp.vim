lua << EOF
  local on_attach_vim = function()
    -- require'diagnostic'.on_attach()
  end
  -- require'lspconfig'.jedi_language_server.setup{on_attach=on_attach_vim}
  -- require'lspconfig'.pyls.setup{on_attach=on_attach_vim}
  require'lspconfig'.pyright.setup{on_attach=on_attach_vim}
  require'lspconfig'.r_language_server.setup{on_attach=on_attach_vim}
  require'lspconfig'.tsserver.setup{on_attach=on_attach_vim}
  require'lspconfig'.vuels.setup{on_attach=on_attach_vim}
  require'lspconfig'.vimls.setup{on_attach=on_attach_vim}
EOF

augroup completion_lua
  autocmd BufEnter * lua require'completion'.on_attach()
augroup END

" Set completeopt to have a better completion experience
set completeopt=menuone,noinsert,noselect
"
" " Avoid showing message extra message when using completion
set shortmess+=c

let g:diagnostic_enable_virtual_text=1
"nnoremap <silent> <c-]> <cmd>lua vim.lsp.buf.definition()<CR>
nnoremap <silent> K     <cmd>lua vim.lsp.buf.hover()<CR>
nnoremap <silent> gD    <cmd>lua vim.lsp.buf.implementation()<CR>
nnoremap <silent> <c-k> <cmd>lua vim.lsp.buf.signature_help()<CR>
nnoremap <silent> 1gD   <cmd>lua vim.lsp.buf.type_definition()<CR>
nnoremap <silent> gr    <cmd>lua vim.lsp.buf.references()<CR>
nnoremap <silent> g0    <cmd>lua vim.lsp.buf.document_symbol()<CR>
nnoremap <silent> gW    <cmd>lua vim.lsp.buf.workspace_symbol()<CR>
nnoremap <silent> gd    <cmd>lua vim.lsp.buf.declaration()<CR>

" let g:completion_chain_complete_list.default.comment.default = [      
"       \ { complete_items : [ 'lsp' , 'snippet'] },
"       \ { complete_items : [ 'buffers' ] },
"       \ { mode : [ '<c-p>' ] },
"       \ { mode : [ '<c-n>' ] },
"       \ ]    
