vim.g.vimwiki_global_ext = 0
vim.g.vimwiki_list = {{path= '~/my_site/',
                        syntax= "markdown", ext= '.md',
                        diary_caption_level= 1,
                        auto_diary_index= 1}}
local map = vim.keymap.set
map("n", "<leader>wt", ":VimwikiToggleListItem<CR>")
map("n", "<leader>wf", ":VimwikiFollowLink<CR>")

local pandoc_syntax = vim.api.nvim_create_augroup("pandoc", {clear = true})
vim.api.nvim_create_autocmd({"FileType"}, {pattern="vimwiki", group = pandoc_syntax, callback = function() vim.cmd.TSToggle("highlight"); vim.o.syntax = "vimwiki" end})
