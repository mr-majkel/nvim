local function qmd()
vim.o.filetype = "markdown"
end
vim.api.nvim_create_autocmd({"BufRead", "BufNewFile"}, {pattern = {"*.qmd"}, callback = qmd})
