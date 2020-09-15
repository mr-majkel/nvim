source ~/AppData/Local/nvim/general/settings.vim
source ~/AppData/Local/nvim/vim-plug/plugins.vim
" source ~/AppData/Local/nvim/plug-config/coc.vim
" source ~/AppData/Local/nvim/plug-config/nvim-R.vim
source ~/AppData/Local/nvim/plug-config/nvim-lsp.vim
source ~/AppData/Local/nvim/plug-config/vim-slime.vim
source ~/AppData/Local/nvim/plug-config/firenvim.vim
source ~/AppData/Local/nvim/plug-config/airline.vim
source ~/AppData/Local/nvim/plug-config/ultisnips.vim
" source ~/AppData/Local/nvim/plug-config/ncm2.vim
source ~/AppData/Local/nvim/general/my-keys.vim
" source ~/AppData/Local/nvim/plug-config/deoplete.vim
set termguicolors
colorscheme gruvbox
set background=dark
" inoremap <silent> <expr> <c-j> <Plug>(ncm2_ultisnips_expand_completed)
"" coc options
" let g:coc_node_path = 'C:\Users\modzmi01\Documents\node-v12.18.0-win-x64\node-v12.18.0-win-x64\node.exe'

 

" nerdtree options
" autocmd vimenter * NERDTree
nnoremap <C-n> :NERDTreeToggle<CR>



" Use <TAB> to select the popup menu:
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" Map Esc to exit terminal mode
tnoremap <Esc> <C-\><C-n>

