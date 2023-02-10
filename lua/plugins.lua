-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Install packer
local install_path = vim.fn.stdpath 'data' .. '/site/pack/packer/start/packer.nvim'
local is_bootstrap = false
if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
  is_bootstrap = true
  vim.fn.system { 'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path }
  vim.cmd [[packadd packer.nvim]]
end

local use = require("packer").use

require('packer').startup(function()
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- lua
  use { 'folke/neodev.nvim', ft = 'lua', config = function() require('neodev').setup({}) end }


  -- colorscheme and looks
  use 'Shatur/neovim-ayu'
  use 'marko-cerovac/material.nvim'
  use 'kyazdani42/nvim-web-devicons'
  use 'crispgm/nvim-tabline'
  use 'hoob3rt/lualine.nvim'
  use 'mhinz/vim-startify'

  -- utility
  use {'lewis6991/impatient.nvim', config=function() require"impatient" end}
  use 'nvim-lua/plenary.nvim'
  use 'nvim-lua/popup.nvim'
  use { 'tpope/vim-surround', event = "BufWinEnter" }
  use { 'tpope/vim-commentary', event = "BufWinEnter" }
  use { 'norcalli/nvim-colorizer.lua', event = "CursorHold", config = function() require 'colorizer'.setup() end }
  use { 'ojroques/vim-oscyank', event = "BufWinEnter" }
  use { 'jpalardy/vim-slime' }
  use { 'glacambre/firenvim', run = function() vim.fn['firenvim#install'](0) end }
  use { 'folke/zen-mode.nvim', cmd = "ZenMode", config = function() require "mm.plugins.focus" end }
  use { 'folke/trouble.nvim', cmd = "Trouble", config = function() require "mm.plugins.trouble" end }
  use { 'folke/todo-comments.nvim', event = "BufWinEnter", config = function() require "mm.plugins.todo_comments" end }
  use { 'stevearc/aerial.nvim', after="nvim-treesitter", config = function() require "mm.plugins.aerial" end }
  use { 'folke/which-key.nvim', config = function() require "mm.plugins.whichkeynvim" end }

  -- rest api
  use { 'NTBBloodbath/rest.nvim', ft = "http", config = function() require "mm.plugins.rest" end }

  -- remote
  use { 'chipsenkbeil/distant.nvim', cmd = "Distant", config = function() require "mm.plugins.rest" end }

  -- filetypes
  use { 'mracos/mermaid.vim' }
  use { 'https://gitlab.com/HiPhish/jinja.vim', as = 'jinja.vim', }

  -- treesitter
  use { 'nvim-treesitter/nvim-treesitter',
    config = function() require "mm.plugins.treesitter" end }
  use { 'nvim-treesitter/nvim-treesitter-textobjects', after = "nvim-treesitter" }
  use { 'nvim-treesitter/playground', after = "nvim-treesitter" }

  -- file browser
  use { 'tamago324/lir.nvim', event = "CursorHold", config = function() require "mm.plugins.lir" end }
  use { 'tamago324/lir-git-status.nvim', config = function() require 'lir.git_status'.setup() end, after = "lir.nvim" }

  -- file jumping
  -- change to CursorHold in 0.8
  use { 'nvim-lua/telescope.nvim', event = "CursorHold", config = function() require("mm.plugins.telescope") end }
  use { 'ThePrimeagen/harpoon', config = function() require("mm.plugins.harpoon") end, after = "telescope.nvim" }

  -- git
  use { 'tpope/vim-fugitive', config = function() require("mm.plugins.fugitive") end }
  use { 'lewis6991/gitsigns.nvim', config = function() require("mm.plugins.gitsigns") end }

  -- lsp and completions and linters
  use { 'tpope/vim-dadbod', config = function() vim.g.dbext_default_ORA_bin = "sql" end }
  use { "kristijanhusak/vim-dadbod-completion", after="nvim-cmp", }
  use { 'kristijanhusak/vim-dadbod-ui', config = function() vim.g.db_ui_env_variable_url = "sirlatam" end}
  use { 'neovim/nvim-lspconfig', config = function() require("mm.plugins.nvim_lsp") end,
    requires = {
      { 'hrsh7th/cmp-nvim-lsp' },
    }
  }
  use { "ray-x/lsp_signature.nvim", config = function() require("lsp_signature").setup() end}



  use { 'hrsh7th/nvim-cmp', event = "InsertEnter", config = function() require("mm.plugins.cmp") end }
  use { 'hrsh7th/cmp-buffer', after = "nvim-cmp" }
  use { 'hrsh7th/cmp-path', after = "nvim-cmp" }
  use { 'hrsh7th/cmp-nvim-lua', after = "nvim-cmp" }

  use { 'nanotee/sqls.nvim' }
  --
  -- wiki and md
  -- use { 'vimwiki/vimwiki', branch="dev", after = "vim-pandoc",
  --   setup = function() require("mm.plugins.vimwiki") end }
  -- use { 'tools-life/taskwiki', after = "vimwiki" }
  -- use { 'vim-pandoc/vim-pandoc' }
  -- use { 'vim-pandoc/vim-pandoc-syntax', after = "vim-pandoc" }
  use { 'dhruvasagar/vim-table-mode', cmd = "Tableize", ft = "markdown" }
  use({'jakewvincent/mkdnflow.nvim',
      -- rocks = 'luautf8', -- Ensures optional luautf8 dependency is installed
          config = function()
                    require('mm.plugins.mkdnflow')
                        end
                      })

  -- dap
  use { 'mfussenegger/nvim-dap', event = "BufRead" }
  use { 'mfussenegger/nvim-dap-python', ft = "python", after = "nvim-dap", config = function() require("mm.plugins.dap") end }
  use { "rcarriga/nvim-dap-ui", after="nvim-dap", config = function() require("mm.plugins.dapui") end, requires = {"mfussenegger/nvim-dap"} }
  use { "rcarriga/cmp-dap", after="nvim-cmp", requires = {"mfussenegger/nvim-dap"} }

  -- python dev
  use { 'danymat/neogen', event = "CursorHold", config = function() require("mm.plugins.neogen") end }
  use {'quarto-dev/quarto-nvim' , requires='jmbuhr/otter.nvim'}

  if is_bootstrap then
    require('packer').sync()
  end
end)

-- When we are bootstrapping a configuration, it doesn't
-- make sense to execute the rest of the init.lua.
--
-- You'll need to restart nvim, and then it will work.
if is_bootstrap then
  print '=================================='
  print '    Plugins are being installed'
  print '    Wait until Packer completes,'
  print '       then restart nvim'
  print '=================================='
  return
end
