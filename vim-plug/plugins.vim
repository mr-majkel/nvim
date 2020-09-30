call plug#begin('~/AppData/Local/nvim/plugged')
Plug 'tpope/vim-surround'
Plug 'mhinz/vim-startify'
Plug 'nvim-treesitter/nvim-treesitter'
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-lua/telescope.nvim'
Plug 'liuchengxu/vim-which-key'
Plug 'morhetz/gruvbox'
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'
" Plug 'preservim/nerdtree'
" Plug 'jalvesaq/Nvim-R', { 'branch': 'master' }
Plug 'jiangmiao/auto-pairs'
Plug 'sirver/UltiSnips'
Plug 'neovim/nvim-lsp'
Plug 'nvim-lua/completion-nvim'
Plug 'nvim-lua/diagnostic-nvim'
Plug 'steelsojka/completion-buffers'
Plug 'jpalardy/vim-slime'
Plug 'glacambre/firenvim', { 'do': { _ -> firenvim#install(0) } }
" RRRRRRRRR
call plug#end()
