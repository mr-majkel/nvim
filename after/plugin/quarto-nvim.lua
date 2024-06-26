require'quarto'.setup{
  require'quarto'.setup{
  debug = false,
  closePreviewOnExit = true,
  lspFeatures = {
    enabled = true,
    languages = { 'r', 'python', 'julia', 'bash' },
    chunks = 'curly', -- 'curly' or 'all'
    diagnostics = {
      enabled = true,
      triggers = { "BufWritePost" }
    },
    completion = {
      enabled = true,
    },
  },
  -- keymap = {
  --   hover = 'K',
  --   definition = 'gd',
  --   rename = '<leader>rn',
  --   -- references = '<leader>gr',
  -- }
}
}
