require'quarto'.setup{
  debug = false,
  closePreviewOnExit = true,
  lspFeatures = {
    enabled = true,
    languages = { 'r', 'python', 'julia' },
    diagnostics = {
      enabled = true,
      triggers = { "BufEnter", "InsertLeave", "TextChanged" }
    },
    cmpSource = {
      enabled = true,
    },
  },
  keymap = {
    hover = 'K',
  }
}
