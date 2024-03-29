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

local map = vim.keymap.set
map("n", "<leader>ff", require'telescope.builtin'.find_files, {desc="Find file"})
map("n", "<leader>fb", function() require'telescope.builtin'.buffers{ show_all_buffers = true } end, {desc="Find buffer"})
map("n", "<leader>fg", require'telescope.builtin'.git_branches, {desc="Find branch"})
map("n", "<leader>fr", require'telescope.builtin'.live_grep, {desc="Live grep"})
map("n", "<leader>fh", require'telescope.builtin'.help_tags, {desc="Help tags"})
map("n", "<leader>gr", function() require'telescope.builtin'.lsp_references{ path_display = {"shorten" }} end, {desc="LSP references"})
map("n", "<leader>ft", require'telescope.builtin'.treesitter, {desc="Treesitter nodes"})
