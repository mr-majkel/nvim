local neogit = require('neogit')

neogit.setup {
  disable_commit_confirmation = true,
  integrations = {
    diffview = true
  }
}

vim.api.nvim_set_keymap("n", "<leader>ee", ":Neogit<CR>", { noremap = true , silent = true})

