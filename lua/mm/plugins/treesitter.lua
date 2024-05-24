local parser_configs = require('nvim-treesitter.parsers').get_parser_configs()
parser_configs.http = {
  install_info = {
    url = "https://github.com/NTBBloodbath/tree-sitter-http",
    files = { "src/parser.c" },
    branch = "main",
  },
}
require'nvim-treesitter.configs'.setup {
  ensure_installed = {"markdown", "markdown_inline","lua", "vim", "python", "javascript", "bash", "dockerfile", "http", "r", "query", "go"},
  highlight = {
    enable = true,              -- false will disable the whole extension
    disable = {"vimwiki"},  -- list of language that will be disabled
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
  textobjects = {
    select = {
      enable=true,
      keymaps={
        ["is"] = "@parameter.inner",
        ["as"] = "@parameter.outer",
      },
    },
    swap = {
      enable = true,
      swap_next = {
        ["gs"] = { query= "@parameter.inner", desc="swap with next node"},
      },
      swap_previous = {
        ["gS"] = { query= "@parameter.inner", desc="swap with next node"},
      },
    },
    move = {
      enable = true,
      goto_next_start = {
        ["]j"] = "@cellseparator",
        ["]c"] = "@cellcontent",
      },
      goto_previous_start = {
        ["[j"] = "@cellseparator",
        ["[c"] = "@cellcontent",
      },
    },
  },
}

require'treesitter-context'.setup{
  enable = true, -- Enable this plugin (Can be enabled/disabled later via commands)
  max_lines = 10, -- How many lines the window should span. Values <= 0 mean no limit.
  min_window_height = 0, -- Minimum editor window height to enable context. Values <= 0 mean no limit.
  line_numbers = true,
  multiline_threshold = 10, -- Maximum number of lines to show for a single context
  trim_scope = 'outer', -- Which context lines to discard if `max_lines` is exceeded. Choices: 'inner', 'outer'
  mode = 'cursor',  -- Line used to calculate context. Choices: 'cursor', 'topline'
  -- Separator between context and content. Should be a single character string, like '-'.
  -- When separator is set, the context will only show up when there are at least 2 lines above cursorline.
  separator = nil,
  zindex = 20, -- The Z-index of the context window
  on_attach = nil, -- (fun(buf: integer): boolean) return false to disable attaching
}
-- require('nvim-treesitter.install').compilers = {"clang"}
vim.api.nvim_set_hl(0, "TreesitterContextBottom",{underline = true, sp = "Grey"})
