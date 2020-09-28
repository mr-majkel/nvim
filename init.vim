source $XDG_CONFIG_HOME/nvim/general/settings.vim
source $XDG_CONFIG_HOME/nvim/vim-plug/plugins.vim
" source $XDG_CONFIG_HOME/nvim/plug-config/coc.vim
" source $XDG_CONFIG_HOME/nvim/plug-config/nvim-R.vim
source $XDG_CONFIG_HOME/nvim/plug-config/startify.vim
source $XDG_CONFIG_HOME/nvim/plug-config/nvim-lsp.vim
source $XDG_CONFIG_HOME/nvim/plug-config/vim-slime.vim
source $XDG_CONFIG_HOME/nvim/plug-config/firenvim.vim
source $XDG_CONFIG_HOME/nvim/plug-config/airline.vim
source $XDG_CONFIG_HOME/nvim/plug-config/ultisnips.vim
" source $XDG_CONFIG_HOME/nvim/plug-config/ncm2.vim
source $XDG_CONFIG_HOME/nvim/general/my-keys.vim
source $XDG_CONFIG_HOME/nvim/plug-config/whichkey.vim
" source $XDG_CONFIG_HOME/nvim/plug-config/deoplete.vim
set termguicolors
colorscheme gruvbox
set background=dark
" inoremap <silent> <expr> <c-j> <Plug>(ncm2_ultisnips_expand_completed)
"" coc options
" let g:coc_node_path = 'C:\Users\modzmi01\Documents\node-v12.18.0-win-x64\node-v12.18.0-win-x64\node.exe'

 

" nerdtree options
" autocmd vimenter * NERDTree
nnoremap <C-n> :NERDTreeToggle<CR>
nnoremap <Leader>n :NERDTreeToggle<CR>:OpenBookmark 


" Use <TAB> to select the popup menu:
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" Map Esc to exit terminal mode
tnoremap <Esc> <C-\><C-n>

