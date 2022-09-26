local colors = require('ayu.colors')
colors.generate()

require('ayu').setup({
  mirage = false, -- Set to `true` to use `mirage` variant instead of `dark` for dark background.
  overrides = {
    String = {fg = colors.vcs_added},
    LineNr = {fg="#dddddd"},
    VertSplit = {fg = "#555555", bg="#222222"},
    NormalNC = {bg = "#222222"},
    NormalFloat = {bg = "#121212"},
    FloatBorder = {fg = "#888888", bg = "#121212"},


  }, -- A dictionary of group names, each associated with a dictionary of parameters (`bg`, `fg`, `sp` and `style`) and colors in hex.
})
