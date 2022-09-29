local o = vim.opt

vim.g.mapleader=" "

o.fileformats={"unix", "dos"} --  make linux format preffered
o.splitright = true -- split to the right
o.completeopt={"noinsert", "menuone", "noselect"}
o.nu = true
o.rnu = true
o.cursorline = true
o.signcolumn = "yes"
o.autoindent = true
o.smartindent = true
o.hlsearch = true
o.wrap = false

o.sidescrolloff=10
o.scrolloff=6
o.incsearch=true
o.inccommand="split" -- shows live changes for substitute
o.cmdheight=2
o.shiftwidth=2; o.softtabstop=2; o.expandtab = true -- tab = 2 spaces always
o.mouse="a" -- Enable your mouse 
o.colorcolumn = {80} -- color column no.80
o.hidden = true
o.foldlevelstart=99 --do not fold close by default
o.laststatus=3 --global statusline


o.termguicolors = true
o.background = "dark"

o.updatetime = 1000

o.list = true

local yank_group = vim.api.nvim_create_augroup("YankGroup", {clear = true})
vim.api.nvim_create_autocmd({"TextYankPost"},
  {group = yank_group, callback = function()
    vim.highlight.on_yank({higroup="IncSearch", timeout=100}) 
  end})

