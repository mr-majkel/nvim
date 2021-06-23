call plug#begin('~/AppData/Local/nvim/plugged')
Plug 'romgrk/lib.kom'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'mhinz/vim-startify'
Plug 'nvim-treesitter/nvim-treesitter'
Plug 'nvim-treesitter/nvim-treesitter-textobjects'
Plug 'vifm/vifm.vim'
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-lua/telescope.nvim'
Plug 'liuchengxu/vim-which-key'
Plug 'morhetz/gruvbox'
Plug 'tpope/vim-fugitive'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'romgrk/barbar.nvim'
Plug 'jiangmiao/auto-pairs'
Plug 'neovim/nvim-lspconfig'
Plug 'nvim-lua/completion-nvim'
Plug 'nvim-lua/diagnostic-nvim'
Plug 'steelsojka/completion-buffers'
Plug 'jpalardy/vim-slime'
Plug 'glacambre/firenvim', { 'do': { _ -> firenvim#install(0) } }
Plug 'raghur/vim-ghost', {'do': 'GhostInstall'}
Plug 'kristijanhusak/vim-dadbod'
Plug 'kristijanhusak/vim-dadbod-ui'
Plug 'kristijanhusak/vim-dadbod-completion'
Plug 'vimwiki/vimwiki', { 'branch': 'dev' }
Plug 'kkoomen/vim-doge', { 'do': { -> doge#install() } }
Plug 'hoob3rt/lualine.nvim'
Plug 'lewis6991/gitsigns.nvim'
call plug#end()
