vim.g.vimwiki_global_ext = 0
vim.g.vimwiki_list = {{path= '~/my_site/',
                        syntax= "markdown", ext= '.md',
                        diary_caption_level= 1,
                        auto_diary_index= 1}}
local map = vim.keymap.set
map("n", "<leader>wt", ":VimwikiToggleListItem<CR>")
map("n", "<leader>wf", ":VimwikiFollowLink<CR>")

