local map = vim.keymap.set

map("n", "<leader>ee", ":Git<return>", {silent=true})
map("n", "<leader>ef", ":Git fetch<return>", {silent=true})
map("n", "<leader>ep", ":Git pull<return>", {silent=true})
map("n", "<leader>eh", ":Git push<return>", {silent=true})
map("n", "<leader>ec", ":Git checkout ")
map("n", "<leader>em", ":Git commit --no-verify -m '")

