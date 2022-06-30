-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
-- vim.cmd [[packadd packer.nvim]]
local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  use 'romgrk/lib.kom'
  use 'tpope/vim-surround'
  use 'tpope/vim-commentary'
  use 'mhinz/vim-startify'
  use 'nvim-treesitter/nvim-treesitter'
  use 'nvim-treesitter/nvim-treesitter-textobjects'
  use 'vifm/vifm.vim'
  use 'nvim-lua/popup.nvim'
  use 'nvim-lua/plenary.nvim'
  use 'nvim-lua/telescope.nvim'
  use 'ellisonleao/gruvbox.nvim'
  use 'rose-pine/neovim'
  use { 'rmehri01/onenord.nvim', branch = 'main' }
  use 'navarasu/onedark.nvim'
  use 'rebelot/kanagawa.nvim'
  use 'tpope/vim-fugitive'
  use 'kyazdani42/nvim-web-devicons'
  use 'romgrk/barbar.nvim'
  use 'neovim/nvim-lspconfig'
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-nvim-lua'
  use 'jpalardy/vim-slime'
  use { 'glacambre/firenvim',  run = function() vim.fn['firenvim#install'](0) end }
  use 'vimwiki/vimwiki'
  use 'tools-life/taskwiki'
  use 'hoob3rt/lualine.nvim'
  use 'lewis6991/gitsigns.nvim'
  use 'vim-pandoc/vim-pandoc'
  use 'vim-pandoc/vim-pandoc-syntax' 
  use 'NTBBloodbath/rest.nvim'
  use 'chipsenkbeil/distant.nvim'
  use 'folke/twilight.nvim'
  use 'folke/zen-mode.nvim'
  use 'folke/trouble.nvim'
  use 'folke/todo-comments.nvim'
  use 'mracos/mermaid.vim'
  use 'ojroques/vim-oscyank'
  use 'danymat/neogen'
  use 'mfussenegger/nvim-dap'
  use 'mfussenegger/nvim-dap-python'
  use 'untitled-ai/jupyter_ascending.vim'
  use 'goerz/jupytext.vim'
  use 'stevearc/aerial.nvim'
  use {'bfredl/nvim-ipy', run = ":UpdateRemotePlugins"}
  use 'nvim-neorg/neorg'
  use { 'wthollingsworth/pomodoro.nvim', requires = 'MunifTanjim/nui.nvim' }
  use 'folke/which-key.nvim'

  if packer_bootstrap then
    require('packer').sync()
  end
end)
