" python3 for ncm
let g:python3_host_prog='~/AppData/Local/Programs/Python/Python38/python.exe'

" IMPORTANT: :help Ncm2PopupOpen for more information
set completeopt=noinsert,menuone,noselect,preview



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
set cc=80

source $VIMRUNTIME/mswin.vim
:cd ~

call plug#begin('~/AppData/Local/nvim/plugged')
Plug 'mhinz/vim-startify'
Plug 'morhetz/gruvbox'
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'
Plug 'preservim/nerdtree'
Plug 'jalvesaq/Nvim-R'
Plug 'jiangmiao/auto-pairs'
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

" ncm2-ultisnips 
" enable ncm2 for all buffers
autocmd BufEnter * call ncm2#enable_for_buffer()

" c-j c-k for moving in snippet
" let g:UltiSnipsExpandTrigger		= '<c-j>'
 let g:UltiSnipsJumpForwardTrigger	= '<c-j>'
 let g:UltiSnipsJumpBackwardTrigger	= '<c-k>'
 let g:UltiSnipsRemoveSelectModeMappings = 0
" " `my_snippets` is the directory we created before
 let g:UltiSnipsSnippetDirectories=["UltiSnips", "my_snippets"]
inoremap <silent> <expr> <CR> ncm2_ultisnips#expand_or("\<CR>", 'n')
" coc options
" let g:coc_node_path = 'C:\Users\modzmi01\Documents\node-v12.18.0-win-x64\node-v12.18.0-win-x64\node.exe'

 
" nvim-R options
let R_path = "~/Documents/R/R-4.0.1/bin/x64"
hi rGlobEnvFun ctermfg=117 guifg=#87d7ff cterm=italic gui=italic
let R_hi_fun_globenv=2 "

let R_nvim_wd = 1 " R's working directory to be the same as Vim's working directory
" Shortcut for R's assignment operator: 0 turns it off; 1 assigns underscore; 2 assigns two underscores
let R_assign=2
" start R with F2 key
map <F2> <Plug>RStart 
imap <F2> <Plug>RStart
vmap <F2> <Plug>RStart

" Send selection or line to R with space bar, respectively.
vmap <Space> <Plug>RDSendSelection
nmap <Space> <Plug>RDSendParagraph

let R_hl_term=1 " Syntax highlight terminal as rout file type

" nerdtree options
autocmd vimenter * NERDTree
map <C-n> :NERDTreeToggle<CR>

" windows behavior
set wh=20
set wiw=90

" Use <TAB> to select the popup menu:
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
