-- This file can be loaded by calling `lua require('plugins')` from your init.vim

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require('lazy').setup({
  -- lua
   { 'folke/neodev.nvim', ft = 'lua', config = function() require('neodev').setup({}) end },


  -- colorscheme and looks
   'Shatur/neovim-ayu',
   'marko-cerovac/material.nvim',
   'kyazdani42/nvim-web-devicons',
   'crispgm/nvim-tabline',
   'hoob3rt/lualine.nvim',
   'mhinz/vim-startify',

  -- utility
   {'lewis6991/impatient.nvim', config=function() require"impatient" end},
   'nvim-lua/plenary.nvim',
   'nvim-lua/popup.nvim',
   { 'tpope/vim-surround', event = "BufWinEnter" },
   { 'tpope/vim-commentary', event = "BufWinEnter" },
   { 'norcalli/nvim-colorizer.lua', event = "CursorHold", config = function() require 'colorizer'.setup() end },
   { 'ojroques/vim-oscyank', event = "BufWinEnter" },
   { 'jpalardy/vim-slime' },
   { 'glacambre/firenvim', run = function() vim.fn['firenvim#install'](0) end },
   { 'folke/zen-mode.nvim', cmd = "ZenMode", config = function() require "mm.plugins.focus" end },
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

  -- file browser
   { 'tamago324/lir.nvim', event = "CursorHold", config = function() require "mm.plugins.lir" end },
   { 'tamago324/lir-git-status.nvim', config = function() require 'lir.git_status'.setup() end},

  -- file jumping
  -- change to CursorHold in 0.8
   { 'nvim-lua/telescope.nvim', event = "CursorHold", config = function() require("mm.plugins.telescope") end },
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
   { "ray-x/lsp_signature.nvim", config = function() require("lsp_signature").setup() end},



   { 'hrsh7th/nvim-cmp', event = "InsertEnter", config = function() require("mm.plugins.cmp") end },
   { 'hrsh7th/cmp-buffer'},
   { 'hrsh7th/cmp-path'},
   { 'hrsh7th/cmp-nvim-lua'},

   { 'nanotee/sqls.nvim' },
  --
  -- wiki and md
  --  { 'vimwiki/vimwiki', branch="dev", after = "vim-pandoc",
  --   setup = function() require("mm.plugins.vimwiki") end },
  --  { 'tools-life/taskwiki', after = "vimwiki" },
  --  { 'vim-pandoc/vim-pandoc' },
  --  { 'vim-pandoc/vim-pandoc-syntax', after = "vim-pandoc" },
   { 'dhruvasagar/vim-table-mode', cmd = "Tableize", ft = "markdown" },
  -- ({'jakewvincent/mkdnflow.nvim',
  --     -- rocks = 'luautf8', -- Ensures optional luautf8 dependency is installed
  --         config = function()
  --                   require('mm.plugins.mkdnflow')
  --                       end
  --                     })
  {dir="$XDG_CONFIG_HOME/nvim/dev/zk-nvim/", config = function() require("mm.plugins.zk") end},

  -- dap
   { 'mfussenegger/nvim-dap', event = "BufRead" },
   { 'mfussenegger/nvim-dap-python', ft = "python", config = function() require("mm.plugins.dap") end },
   { "rcarriga/nvim-dap-ui", config = function() require("mm.plugins.dapui") end, dependencies = {"mfussenegger/nvim-dap"} },
   { "rcarriga/cmp-dap", dependencies = {"mfussenegger/nvim-dap"} },

  -- python dev
   { 'danymat/neogen', event = "CursorHold", config = function() require("mm.plugins.neogen") end },
   {'quarto-dev/quarto-nvim' , dependencies='jmbuhr/otter.nvim'},
})
