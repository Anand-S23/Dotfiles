-- Options --
local opt = vim.opt

opt.cursorline = true
opt.guifont = "monospace:h17"
opt.termguicolors = true
opt.updatetime = 50
opt.colorcolumn = "80"

opt.nu = true
opt.relativenumber = true

vim.scriptencoding = 'utf-8'
opt.encoding = 'utf-8'
opt.fileencoding = 'utf-8'

opt.smartindent = true
opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.wrap = false

opt.clipboard = "unnamedplus"
-- opt.cmdheight = 2
opt.mouse = "a"

opt.swapfile = false
opt.backup = false
opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
opt.undofile = true

opt.hlsearch = false
opt.incsearch = true

opt.scrolloff = 8
opt.signcolumn = "yes"
opt.isfname:append("@-@")

