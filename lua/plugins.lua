-- This file can be loaded by calling `lua require('plugins')` from your init.vim

local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end

return require('packer').startup(function()
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'


  -- colorscheme and looks
  use 'Shatur/neovim-ayu'
  use 'kyazdani42/nvim-web-devicons'
  use 'crispgm/nvim-tabline'
  use 'hoob3rt/lualine.nvim'
  use 'mhinz/vim-startify'

  -- utility
  use 'nvim-lua/plenary.nvim'
  use 'nvim-lua/popup.nvim'
  use {'tpope/vim-surround', event="BufWinEnter"}
  use {'tpope/vim-commentary', event="BufWinEnter"}
  use {'norcalli/nvim-colorizer.lua', event="CursorHold", config=function() require'colorizer'.setup() end}
  use {'ojroques/vim-oscyank', event="BufWinEnter"}
  use {'jpalardy/vim-slime'}
  use { 'glacambre/firenvim',  run = function() vim.fn['firenvim#install'](0) end}
  use {'folke/zen-mode.nvim', cmd="ZenMode", config=function() require"mm.plugins.focus" end}
  use {'folke/trouble.nvim', cmd="Trouble", config=function() require"mm.plugins.trouble" end}
  use {'folke/todo-comments.nvim', event="BufWinEnter", config=function() require"mm.plugins.todo_comments" end}
  use {'stevearc/aerial.nvim', keys="<leader>a", config=function() require"mm.plugins.aerial" end}
  use {'folke/which-key.nvim', keys="<leader><leader>", config=function() require"mm.plugins.whichkeynvim" end}

  -- rest api
  use {'NTBBloodbath/rest.nvim', ft="http", config=function() require"mm.plugins.rest" end}

  -- remote
  use {'chipsenkbeil/distant.nvim', cmd="Distant", config=function() require"mm.plugins.rest" end}

  -- filetypes
  use {'mracos/mermaid.vim'}
  use { 'https://gitlab.com/HiPhish/jinja.vim', as='jinja.vim' ,}

  -- treesitter
  use {'nvim-treesitter/nvim-treesitter', ft={"python", "vim", "lua", "markdown"}, config=function() require"mm.plugins.treesitter" end}
  use {'nvim-treesitter/nvim-treesitter-textobjects' , after="nvim-treesitter"}
  use {'nvim-treesitter/playground', after="nvim-treesitter"}

  -- file browser
  use {'tamago324/lir.nvim', event="CursorHold", config=function() require"mm.plugins.lir" end}
  use {'tamago324/lir-git-status.nvim', config=function() require'lir.git_status'.setup() end, after="lir.nvim"}

  -- file jumping
  -- change to CursorHold in 0.8
  use {'nvim-lua/telescope.nvim', event="CursorHold", config = function() require("mm.plugins.telescope") end}
  use {'ThePrimeagen/harpoon', config=function() require("mm.plugins.harpoon") end, after = "telescope.nvim"}

  -- git
  use {'tpope/vim-fugitive', cmd="Git", keys="<leader>ee", config=function() require("mm.plugins.fugitive") end}
  use {'lewis6991/gitsigns.nvim', ft={"lua", "python", "vim"}, event="CursorHold", config=function() require("mm.plugins.gitsigns") end}

  -- lsp and completions and linters
  use {'neovim/nvim-lspconfig', event="CursorHold", config=function() require("mm.plugins.nvim_lsp") end, requires={
  'hrsh7th/cmp-nvim-lsp'
}}
  use {'hrsh7th/nvim-cmp', event="InsertEnter", config=function() require("mm.plugins.cmp") end}
  use {'hrsh7th/cmp-buffer', after="nvim-cmp"}
  use {'hrsh7th/cmp-path', after="nvim-cmp"}
  use {'hrsh7th/cmp-nvim-lua', after="nvim-cmp"}

  use {'mfussenegger/nvim-lint', event="BufWinEnter", config=function() require("mm.plugins.nvim_lint") end}
  
  -- wiki and md
  use {'vimwiki/vimwiki', event="CursorHold", setup=function() require("mm.plugins.vimwiki") end}
  use {'tools-life/taskwiki', after="vimwiki"}
  use {'vim-pandoc/vim-pandoc', ft="markdown"}
  use {'vim-pandoc/vim-pandoc-syntax', ft="markdown", after="vim-pandoc"}

  -- python dev
  use {'danymat/neogen', event="CursorHold", config = function() require("mm.plugins.neogen") end}
  use {'mfussenegger/nvim-dap', ft="python", }
  use {'mfussenegger/nvim-dap-python', ft="python", after="nvim-dap", config=function() require("mm.plugins.dap") end}
  use {'untitled-ai/jupyter_ascending.vim', ft="python"}
  use {'goerz/jupytext.vim', ft="python"}
  use {'bfredl/nvim-ipy', ft="python", config=function() require("mm.plugins.nvim_ipy") end}

  if packer_bootstrap then
    require('packer').sync()
  end
end)
