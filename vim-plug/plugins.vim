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
Plug 'preservim/nerdtree'
" Plug 'jalvesaq/Nvim-R', { 'branch': 'master' }
Plug 'jiangmiao/auto-pairs'
" Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
" RRRRRR alternative to coc for R
" Plug 'ncm2/ncm2'
" Plug 'roxma/nvim-yarp'
" Plug 'gaalcaras/ncm-R'
" Optional: for snippet support
" Further configuration might be required, read below
Plug 'sirver/UltiSnips'
" Plug 'ncm2/ncm2-ultisnips'
Plug 'ncm2/float-preview.nvim'
" Optional: better Rnoweb support (LaTeX completion)
" Plug 'lervag/vimtex'
" NOTE: you need to install completion sources to get completions. Check
" our wiki page for a list of sources: https://github.com/ncm2/ncm2/wiki
" Plug 'ncm2/ncm2-bufword'
" Plug 'ncm2/ncm2-path'
Plug 'neovim/nvim-lsp'
Plug 'nvim-lua/completion-nvim'
Plug 'nvim-lua/diagnostic-nvim'
Plug 'jpalardy/vim-slime'
Plug 'glacambre/firenvim', { 'do': { _ -> firenvim#install(0) } }
" RRRRRRRRR
call plug#end()
