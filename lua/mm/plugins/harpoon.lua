local keymap = vim.keymap.set
require("telescope").load_extension('harpoon')

keymap("n", "<leader>gg", function() vim.api.nvim_command("Telescope harpoon marks") end, {desc="Telescope harpoon marks"})
keymap("n", "<leader>ga", require("harpoon.mark").add_file, {desc="Harpoon a file"})
keymap("n", "<leader>go", function() require("harpoon.ui").nav_file(1) end, {desc="Go to harpoon 1"})
keymap("n", "<leader>ge", function() require("harpoon.ui").nav_file(2) end, {desc="Go to harpoon 2"})
keymap("n", "<leader>gu", function() require("harpoon.ui").nav_file(3) end, {desc="Go to harpoon 3"})
keymap("n", "<leader>gh", function() require("harpoon.ui").nav_file(4) end, {desc="Go to harpoon 4"})
