blame_opts = {
    virt_text = true,
    virt_text_pos = 'eol',
    delay = 500
}
require('gitsigns').setup({
  current_line_blame = true,
  current_line_blame_opts = blame_opts
})
vim.cmd([[
  hi link GitSignsCurrentLineBlame Conceal
  ]])
