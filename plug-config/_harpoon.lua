local keymap = vim.keymap.set
require("telescope").load_extension('harpoon')

keymap("n", "<leader>gg", function() vim.api.nvim_command("Telescope harpoon marks") end)
keymap("n", "<leader>aa", require("harpoon.mark").add_file)
keymap("n", "<leader>ga", function() require("harpoon.ui").nav_file(1) end)
keymap("n", "<leader>go", function() require("harpoon.ui").nav_file(2) end)
keymap("n", "<leader>ge", function() require("harpoon.ui").nav_file(3) end)
keymap("n", "<leader>gu", function() require("harpoon.ui").nav_file(4) end)
