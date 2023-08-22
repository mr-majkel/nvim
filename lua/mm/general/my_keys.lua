local opts = { noremap=true, silent=true }
local set_keymap = vim.keymap.set
set_keymap('n', '<leader>do', '<cmd>lua vim.diagnostic.open_float()<CR>', opts)
set_keymap('n', '[d', '<cmd>lua vim.diagnostic.goto_prev()<CR>', opts)
set_keymap('n', ']d', '<cmd>lua vim.diagnostic.goto_next()<CR>', opts)
