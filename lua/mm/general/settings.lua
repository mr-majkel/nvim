local opt = vim.opt
local o = vim.o

vim.g.mapleader=" "

opt.fileformats={"unix", "dos"} --  make linux format preffered
o.splitright = true -- split to the right
opt.completeopt={"noinsert", "menuone", "noselect"}
o.nu = true
o.rnu = true
o.cursorline = true
o.signcolumn = "yes"
o.autoindent = true
o.smartindent = true
o.hlsearch = true
o.wrap = false
opt.clipboard = {"unnamedplus"}

o.undofile = true
o.swapfile = false

o.sidescrolloff=20
local scrolloff = 16
o.scrolloff=scrolloff
o.incsearch=true
o.inccommand="split" -- shows live changes for substitute
o.cmdheight=0
o.shiftwidth=2; o.softtabstop=2; o.expandtab = true -- tab = 2 spaces always
o.mouse="a" -- Enable your mouse 
o.colorcolumn = "80" -- color column no.80
o.hidden = true
o.foldlevelstart=99 --do not fold close by default
o.laststatus=3 --global statusline


o.termguicolors = true
o.background = "dark"

o.updatetime = 500

o.list = true

opt.diffopt={"internal", "filler", "closeoff", "algorithm:histogram", "linematch:60"}

local yank_group = vim.api.nvim_create_augroup("YankGroup", {clear = true})
vim.api.nvim_create_autocmd({"TextYankPost"},
  {group = yank_group, callback = function()
    vim.highlight.on_yank({higroup="IncSearch", timeout=100})
  end})

local terminal_group = vim.api.nvim_create_augroup("TerminalGroup", {clear = true})
vim.api.nvim_create_autocmd({"TermEnter *"},
  {group = terminal_group, callback = function()
    vim.opt_local.scrolloff=0
  end})
vim.api.nvim_create_autocmd({"TermLeave *"},
  {group = terminal_group, callback = function()
    vim.opt_local.scrolloff=scrolloff
  end})
