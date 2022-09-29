lua << EOF
require("telescope").setup {
  defaults = {
    layout_config = {
        center = { width = 120 }
      },
    path_display = { "smart" }
  },
  pickers = {
    buffers = {
      sort_lastused = true,
      theme = "dropdown",
      path_display = { "smart" },
      mappings = {
        i = {
          ["<c-d>"] = require("telescope.actions").delete_buffer,
        },
        n = {
          ["<c-d>"] = require("telescope.actions").delete_buffer,
        }
      }
    },
    find_files = {
        theme = "dropdown"
      }
  },
  extensions = {
    -- Your extension config goes in here
  }
}
EOF

" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope git_branches<cr>
nnoremap <leader>fr <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>lua require'telescope.builtin'.buffers{ show_all_buffers = true }<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>
nnoremap <silent>gr <cmd>lua require'telescope.builtin'.lsp_references{ path_display = "shorten" }<CR>
nnoremap <leader>ft <cmd>Telescope treesitter<CR>
nnoremap <leader>// <cmd>Telescope current_buffer_fuzzy_find<CR>
 
