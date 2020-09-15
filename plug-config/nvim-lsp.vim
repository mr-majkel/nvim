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
  require'nvim_lsp'.pyls.setup{on_attach=on_attach_vim}
  require'nvim_lsp'.r_language_server.setup{on_attach=on_attach_vim}
EOF

augroup completion_lua
  autocmd BufEnter * lua require'completion'.on_attach()
augroup END

" Set completeopt to have a better completion experience
set completeopt=menuone,noinsert,noselect
"
" " Avoid showing message extra message when using completion
set shortmess+=c
