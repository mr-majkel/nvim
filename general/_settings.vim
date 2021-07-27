let mapleader="\<Space>"
" let &shell='bash.exe'
" let &shell='C:/Users/modzmi01/Documents/PowerShell-7.0.3-win-x64/pwsh.exe'

set splitright " split to the right
set completeopt=noinsert,menuone,noselect
set nu                                        " line numbers
set rnu                                       " relative numbers to the curr line
set signcolumn=yes                            " always show sign column (used for lsp)
set autoindent                                " autoindenting on
set smartindent                               " smartindenting when pasting
set hlsearch
set nowrap
set sidescrolloff=10
set scrolloff=6
set incsearch
set inccommand=split                       " shows live changes for substitute
set cmdheight=2
set shiftwidth=2 softtabstop=2 expandtab     " tab = 2 spaces always
set mouse=a                                  " Enable your mouse 
" behave mswin
set colorcolumn=80                           " color column no.80
set hidden

" source $VIMRUNTIME/mswin.vim                 " make sure windows Ctrl-C/V works
" :cd ~                                        " start at home directory

