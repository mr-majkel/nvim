local def_colors = require('kanagawa.colors').setup()
require('kanagawa').setup({
    undercurl = true,           -- enable undercurls
    commentStyle = {italic=true},
    functionStyle = {},
    keywordStyle = {italic=true},
    statementStyle = {bold=true},
    typeStyle = {},
    variablebuiltinStyle = {italic=true},
    specialReturn = true,       -- special highlight for the return keyword
    specialException = true,    -- special highlight for exception handling keywords 
    transparent = true,        -- do not set background color
    dimInactive = true,        -- dim inactive window `:h hl-NormalNC`
    colors = {},
    overrides = {
      Visual= {bg = def_colors.waveBlue2}
  },
})
