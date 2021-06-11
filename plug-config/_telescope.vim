" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope git_branches<cr>
nnoremap <leader>fb <cmd>lua require'telescope.builtin'.buffers{ show_all_buffers = true }<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>
nnoremap <leader>fd <cmd>Telescope file_browser<cr>
nnoremap <silent>gr <cmd>lua require'telescope.builtin'.lsp_references{ shorten_path = true }<CR>
 
