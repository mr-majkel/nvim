-- This file can be loaded by calling `lua require('plugins')` from your init.vim


return { -- lua
   { 'folke/neodev.nvim', ft = 'lua', config = function() require('neodev').setup({}) end },


  -- colorscheme and looks
   'nvim-tree/nvim-web-devicons',
   {'crispgm/nvim-tabline',dependencies = { 'nvim-tree/nvim-web-devicons' }, -- optional
       config = true},
   'hoob3rt/lualine.nvim',
   'mhinz/vim-startify',
   { 'norcalli/nvim-colorizer.lua', event = "CursorHold", config = function() require 'colorizer'.setup() end },

  -- utility
   'nvim-lua/plenary.nvim',
   'nvim-lua/popup.nvim',
   { 'tpope/vim-surround', event = "BufWinEnter" },
   { 'tpope/vim-commentary', event = "BufWinEnter" },
   { 'ojroques/vim-oscyank', event = "BufWinEnter" },
   { 'jpalardy/vim-slime' },
   { 'glacambre/firenvim', 
            cond = not not vim.g.started_by_firenvim,
            build = function()
                require("lazy").load({ plugins = "firenvim", wait = true })
                vim.fn["firenvim#install"](0)
            end
},
   { 'folke/trouble.nvim', cmd = "Trouble", config = function() require "mm.plugins.trouble" end },
   { 'folke/todo-comments.nvim', event = "BufWinEnter", config = function() require "mm.plugins.todo_comments" end },
   { 'stevearc/aerial.nvim', config = function() require "mm.plugins.aerial" end },
   { 'folke/which-key.nvim', config = function() require "mm.plugins.whichkeynvim" end },
  "mbbill/undotree",

  -- rest api
   { 'NTBBloodbath/rest.nvim', ft = "http", config = function() require "mm.plugins.rest" end },

  -- remote
   { 'chipsenkbeil/distant.nvim', cmd = "Distant", config = function() require "mm.plugins.rest" end },

  -- filetypes
   { 'mracos/mermaid.vim' },
   { 'https://gitlab.com/HiPhish/jinja.vim', name = 'jinja.vim', },

  -- treesitter
   { 'nvim-treesitter/nvim-treesitter',
    config = function() require "mm.plugins.treesitter" end },
   { 'nvim-treesitter/nvim-treesitter-textobjects'},
   { 'nvim-treesitter/playground'},
   { 'nvim-treesitter/nvim-treesitter-context'},

  -- file jumping
   { 'nvim-telescope/telescope.nvim', config = function() require("mm.plugins.telescope") end },
   { 'ThePrimeagen/harpoon', config = function() require("mm.plugins.harpoon") end},

  -- git
   { 'tpope/vim-fugitive', config = function() require("mm.plugins.fugitive") end },
   { 'lewis6991/gitsigns.nvim', config = function() require("mm.plugins.gitsigns") end },

  -- lsp and completions and linters
   { 'tpope/vim-dadbod', config = function() vim.g.dbext_default_ORA_bin = "sql" end },
   { "kristijanhusak/vim-dadbod-completion"},
   { 'kristijanhusak/vim-dadbod-ui', config = function() vim.g.db_ui_env_variable_url = "sirlatam" end},
   { 'neovim/nvim-lspconfig', config = function() require("mm.plugins.nvim_lsp") end,
    dependencies = {
      { 'hrsh7th/cmp-nvim-lsp' },
    },
  },

   { 'hrsh7th/nvim-cmp', config = function() require("mm.plugins.cmp") end , dependencies= {'onsails/lspkind-nvim'}},
   { 'hrsh7th/cmp-buffer'},
   { 'hrsh7th/cmp-path'},
   { 'hrsh7th/cmp-nvim-lua'},

   { 'nanotee/sqls.nvim' },
  --
  -- wiki and md
   { 'dhruvasagar/vim-table-mode', cmd = "Tableize", ft = "markdown" },

  -- dap
   { 'mfussenegger/nvim-dap', event = "BufRead" },
   { 'mfussenegger/nvim-dap-python', ft = "python", config = function() require("mm.plugins.dap") end },
   { "rcarriga/nvim-dap-ui", config = function() require("mm.plugins.dapui") end, dependencies = {"mfussenegger/nvim-dap"} },
   { "rcarriga/cmp-dap", dependencies = {"mfussenegger/nvim-dap"} },

  -- python dev
   { 'danymat/neogen', event = "CursorHold", config = function() require("mm.plugins.neogen") end },
   {'quarto-dev/quarto-nvim' , dependencies= {
        'jmbuhr/otter.nvim',
        },
      }
}
