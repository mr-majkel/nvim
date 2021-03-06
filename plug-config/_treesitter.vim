lua <<EOF
require'nvim-treesitter.configs'.setup {
  ensure_installed = {"python", "javascript", "bash", "dockerfile"},     -- one of "all", "language", or a list of languages
  highlight = {
    enable = true,              -- false will disable the whole extension
    -- disable = { "c", "rust" },  -- list of language that will be disabled
  },
}
EOF
