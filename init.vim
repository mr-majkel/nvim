source $XDG_CONFIG_HOME/nvim/general/_settings.vim

if exists("$DOCKER_CONTAINER")
  source $XDG_CONFIG_HOME/nvim/vim-plug/_plugins_docker.vim
else
  source $XDG_CONFIG_HOME/nvim/packer/plugins.lua
endif
source $XDG_CONFIG_HOME/nvim/plug-config/_gruvbox.vim
source $XDG_CONFIG_HOME/nvim/plug-config/_kanagawa.lua
source $XDG_CONFIG_HOME/nvim/plug-config/_catppuccin.lua
source $XDG_CONFIG_HOME/nvim/plug-config/_rose-pine.lua

colorscheme rose-pine
" highlight Normal guibg=NONE
" highlight LineNr guifg=#5eacd3
" highlight CursorLineNr guifg=#ffca00
source $XDG_CONFIG_HOME/nvim/plug-config/_nvim-devicons.vim
source $XDG_CONFIG_HOME/nvim/plug-config/_barbar.vim
source $XDG_CONFIG_HOME/nvim/plug-config/_startify.vim
source $XDG_CONFIG_HOME/nvim/plug-config/_treesitter.lua
source $XDG_CONFIG_HOME/nvim/plug-config/_vifm.vim
source $XDG_CONFIG_HOME/nvim/plug-config/_telescope.vim
source $XDG_CONFIG_HOME/nvim/plug-config/_nvim-lsp.lua
if !exists("$DOCKER_CONTAINER")
  source $XDG_CONFIG_HOME/nvim/plug-config/_rest.vim
  source $XDG_CONFIG_HOME/nvim/plug-config/_firenvim.vim
endif
source $XDG_CONFIG_HOME/nvim/plug-config/_vim-slime.vim
source $XDG_CONFIG_HOME/nvim/plug-config/_lualine.lua
" source $XDG_CONFIG_HOME/nvim/plug-config/_neogit.lua
source $XDG_CONFIG_HOME/nvim/plug-config/_fugitive.vim
source $XDG_CONFIG_HOME/nvim/plug-config/_vimwiki.vim
source $XDG_CONFIG_HOME/nvim/general/_my-keys.vim
source $XDG_CONFIG_HOME/nvim/general/neovide.vim
source $XDG_CONFIG_HOME/nvim/plug-config/_gitsigns.lua
source $XDG_CONFIG_HOME/nvim/plug-config/_distant.lua
source $XDG_CONFIG_HOME/nvim/plug-config/_focus.lua
source $XDG_CONFIG_HOME/nvim/plug-config/_trouble.lua
source $XDG_CONFIG_HOME/nvim/plug-config/_todo-comments.lua
source $XDG_CONFIG_HOME/nvim/plug-config/_neogen.lua
source $XDG_CONFIG_HOME/nvim/plug-config/_dap.lua
source $XDG_CONFIG_HOME/nvim/plug-config/_aerial.lua
source $XDG_CONFIG_HOME/nvim/plug-config/_nvim-ipy.lua
source $XDG_CONFIG_HOME/nvim/plug-config/_neorg.lua
source $XDG_CONFIG_HOME/nvim/plug-config/_pomodoro.lua
source $XDG_CONFIG_HOME/nvim/plug-config/_whichkeynvim.lua

