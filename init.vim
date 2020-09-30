source $XDG_CONFIG_HOME/nvim/general/settings.vim
source $XDG_CONFIG_HOME/nvim/vim-plug/plugins.vim
" source $XDG_CONFIG_HOME/nvim/plug-config/nvim-R.vim
colorscheme gruvbox
set termguicolors
set background=dark
source $XDG_CONFIG_HOME/nvim/plug-config/startify.vim
source $XDG_CONFIG_HOME/nvim/plug-config/treesitter.vim
source $XDG_CONFIG_HOME/nvim/plug-config/telescope.vim
source $XDG_CONFIG_HOME/nvim/plug-config/nvim-lsp.vim
source $XDG_CONFIG_HOME/nvim/plug-config/vim-slime.vim
source $XDG_CONFIG_HOME/nvim/plug-config/firenvim.vim
source $XDG_CONFIG_HOME/nvim/plug-config/airline.vim
source $XDG_CONFIG_HOME/nvim/plug-config/ultisnips.vim
source $XDG_CONFIG_HOME/nvim/general/my-keys.vim
source $XDG_CONFIG_HOME/nvim/plug-config/whichkey.vim

 



" Use <TAB> to select the popup menu:
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" Map Esc to exit terminal mode
tnoremap <Esc> <C-\><C-n>

