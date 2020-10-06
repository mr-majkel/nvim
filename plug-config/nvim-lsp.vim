"Python Microsoft LSP
" lua <<EOF
" require'nvim_lsp'.pyls_ms.setup{
"   cmd = {"dotnet", "exec", "C:/Users/modmzi01/AppData/Local/Temp/nvim/nvim_lsp/pyls_ms/Microsoft.Python.LanguageServer.dll"}
" }
" EOF
" let settings = {
"           \   "pyls" : {
"           \     "enable" : v:true,
"           \     "trace" : { "server" : "verbose", },
"           \     "commandPath" : "",
"           \     "configurationSources" : [ "pycodestyle" ],
"           \     "plugins" : {
"           \       "jedi_completion" : { "enabled" : v:true, },
"           \       "jedi_hover" : { "enabled" : v:true, },
"           \       "jedi_references" : { "enabled" : v:true, },
"           \       "jedi_signature_help" : { "enabled" : v:true, },
"           \       "jedi_symbols" : {
"           \         "enabled" : v:true,
"           \         "all_scopes" : v:true,
"           \       },
"           \       "mccabe" : {
"           \         "enabled" : v:true,
"           \         "threshold" : 15,
"           \       },
"           \       "preload" : { "enabled" : v:true, },
"           \       "pycodestyle" : { "enabled" : v:true, },
"           \       "pydocstyle" : {
"           \         "enabled" : v:false,
"           \         "match" : "(?!test_).*\\.py",
"           \         "matchDir" : "[^\\.].*",
"           \       },
"           \       "pyflakes" : { "enabled" : v:true, },
"           \       "rope_completion" : { "enabled" : v:true, },
"           \       "yapf" : { "enabled" : v:true, },
"           \     }}}
lua << EOF
  local on_attach_vim = function()
    require'diagnostic'.on_attach()
  end
  require'nvim_lsp'.jedi_language_server.setup{on_attach=on_attach_vim}
  -- require'nvim_lsp'.pyls.setup{on_attach=on_attach_vim}
  require'nvim_lsp'.r_language_server.setup{on_attach=on_attach_vim}
  require'nvim_lsp'.tsserver.setup{on_attach=on_attach_vim}
  require'nvim_lsp'.vuels.setup{on_attach=on_attach_vim}
  require'nvim_lsp'.vimls.setup{on_attach=on_attach_vim}
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
