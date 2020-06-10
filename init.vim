" python3 for ncm
let g:python3_host_prog='~/AppData/Local/Programs/Python/Python38/python.exe'

set nu
set rnu
set autoindent
set hlsearch
set nowrap
set sidescroll=10
set incsearch
set cmdheight=2
set shiftwidth=2 softtabstop=2 expandtab
set mouse=a 
behave mswin

source $VIMRUNTIME/mswin.vim
:cd ~

call plug#begin('~/AppData/Local/nvim/plugged')
Plug 'morhetz/gruvbox'
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'
Plug 'preservim/nerdtree'
Plug 'jalvesaq/Nvim-R'
"Plug 'neoclide/coc.nvim', {'branch': 'release'}
" RRRRRR alternative to coc for R
Plug 'ncm2/ncm2'
Plug 'roxma/nvim-yarp'
Plug 'gaalcaras/ncm-R'
" Optional: for snippet support
" Further configuration might be required, read below
Plug 'sirver/UltiSnips'
Plug 'ncm2/ncm2-ultisnips'

" Optional: better Rnoweb support (LaTeX completion)
Plug 'lervag/vimtex'
" NOTE: you need to install completion sources to get completions. Check
" our wiki page for a list of sources: https://github.com/ncm2/ncm2/wiki
Plug 'ncm2/ncm2-bufword'
Plug 'ncm2/ncm2-path'

" RRRRRRRRR
call plug#end()

colorscheme gruvbox

" coc options
" let g:coc_node_path = 'C:\Users\modzmi01\Documents\node-v12.18.0-win-x64\node-v12.18.0-win-x64\node.exe'

" enable ncm2 for all buffers
autocmd BufEnter * call ncm2#enable_for_buffer()

" IMPORTANT: :help Ncm2PopupOpen for more information
set completeopt=noinsert,menuone,noselect

" nvim-R options
let R_path = "~/Documents/R/R-3.6.2/bin/x64"
hi rGlobEnvFun ctermfg=117 guifg=#87d7ff cterm=italic gui=italic
let R_hi_fun_globenv = 2

" nerdtree options
autocmd vimenter * NERDTree
map <C-n> :NERDTreeToggle<CR>

" windows behavior
set wh=20
set wiw=90

