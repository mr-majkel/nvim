require('gitsigns').setup({
  current_line_blame = true,
  current_line_blame_opts = {
    delay = 500
  }
  })
vim.cmd([[
  hi link GitSignsCurrentLineBlame Conceal
  ]])
