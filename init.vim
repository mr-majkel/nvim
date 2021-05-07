source $XDG_CONFIG_HOME/nvim/general/_settings.vim
if exists("$DOCKER_CONTAINER")
  source $XDG_CONFIG_HOME/nvim/vim-plug/_plugins_docker.vim
else
  source $XDG_CONFIG_HOME/nvim/vim-plug/_plugins.vim
endif
" source $XDG_CONFIG_HOME/nvim/plug-config/nvim-R.vim
let g:gruvbox_contrast_dark='hard'
colorscheme gruvbox
set termguicolors
set background=dark
source $XDG_CONFIG_HOME/nvim/plug-config/_nvim-devicons.vim
source $XDG_CONFIG_HOME/nvim/plug-config/_barbar.vim
source $XDG_CONFIG_HOME/nvim/plug-config/_startify.vim
source $XDG_CONFIG_HOME/nvim/plug-config/_treesitter.vim
source $XDG_CONFIG_HOME/nvim/plug-config/_vifm.vim
source $XDG_CONFIG_HOME/nvim/plug-config/_telescope.vim
source $XDG_CONFIG_HOME/nvim/plug-config/_nvim-lsp.vim
if !exists("$DOCKER_CONTAINER")
  source $XDG_CONFIG_HOME/nvim/plug-config/_firenvim.vim
  source $XDG_CONFIG_HOME/nvim/plug-config/_vim-dadbot-complete.vim
endif
source $XDG_CONFIG_HOME/nvim/plug-config/_vim-slime.vim
luafile $XDG_CONFIG_HOME/nvim/plug-config/_lualine.lua
source $XDG_CONFIG_HOME/nvim/plug-config/_fugitive.vim
source $XDG_CONFIG_HOME/nvim/plug-config/_vimwiki.vim
source $XDG_CONFIG_HOME/nvim/plug-config/_doge.vim
source $XDG_CONFIG_HOME/nvim/general/_my-keys.vim
source $XDG_CONFIG_HOME/nvim/general/neovide.vim
source $XDG_CONFIG_HOME/nvim/plug-config/_whichkey.vim

