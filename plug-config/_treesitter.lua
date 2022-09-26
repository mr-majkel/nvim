local parser_configs = require('nvim-treesitter.parsers').get_parser_configs()
parser_configs.http = {
  install_info = {
    url = "https://github.com/NTBBloodbath/tree-sitter-http",
    files = { "src/parser.c" },
    branch = "main",
  },
}
require'nvim-treesitter.configs'.setup {
  ensure_installed = {"norg", "vim", "python", "javascript", "bash", "dockerfile", "http", "r", "query", "go"},
  highlight = {
    enable = true,              -- false will disable the whole extension
    -- disable = { "c", "rust" },  -- list of language that will be disabled
  },
  playground = {
    enable = true,
    disable = {},
    updatetime = 25, -- Debounced time for highlighting nodes in the playground from source code
    persist_queries = false, -- Whether the query persists across vim sessions
    keybindings = {
      toggle_query_editor = 'o',
      toggle_hl_groups = 'i',
      toggle_injected_languages = 't',
      toggle_anonymous_nodes = 'a',
      toggle_language_display = 'I',
      focus_language = 'f',
      unfocus_language = 'F',
      update = 'R',
      goto_node = '<cr>',
      show_help = '?',
    },
  },
  swap = {
    enable = true,
    swap_next = {
      ["<leader>m"] = {"@parameter.inner"},
    },
    swap_previous = {
      ["<leader>M"] = {"@parameter.inner"},
    },
  },
}

require('nvim-treesitter.install').compilers = {"clang"}
