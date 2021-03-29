lua <<EOF
require'nvim-treesitter.configs'.setup {
  ensure_installed = {"python", "javascript"},     -- one of "all", "language", or a list of languages
  highlight = {
    enable = false,              -- false will disable the whole extension
    -- disable = { "c", "rust" },  -- list of language that will be disabled
  },
}
EOF
