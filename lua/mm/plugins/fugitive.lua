local map = vim.keymap.set

map("n", "<leader>ee", ":Git<return>")
map("n", "<leader>ef", ":Git fetch<return>")
map("n", "<leader>ep", ":Git pull<return>")
map("n", "<leader>eh", ":Git push<return>")
map("n", "<leader>ec", ":Git checkout ")
map("n", "<leader>em", ":Git commit --no-verify -m '")

