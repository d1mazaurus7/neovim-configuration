--- options.lua

local opt = vim.opt

opt.number = true
opt.relativenumber = true
opt.cursorline = true
opt.scrolloff = 8
opt.sidescrolloff = 8

opt.tabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.smartindent = true
opt.breakindent = true

--- Search
opt.ignorecase = true
opt.smartcase = true
opt.hlsearch = true
opt.incsearch = true

--- Visual
opt.termguicolors = true
opt.signcolumn = "yes"
opt.wrap = false
opt.fillchars = { eob = " " }

--- Bufer
opt.clipboard = "unnamedplus"

--- Undo
opt.undofile = true
opt.undolevels = 10000

--- Mouse and speed
opt.mouse = "a"
opt.updatetime = 250
opt.timeoutlen = 300

--- Other
opt.confirm = true
opt.virtualedit = "block"
