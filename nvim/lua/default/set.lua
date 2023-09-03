-- sets line numbers
vim.opt.nu = true
-- line numbers relative to cur
vim.opt.relativenumber = true

-- 4 tab lines
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = false;

-- set undotree to be persistent and stops vim auto backup
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir =  os.getenv("HOME").."/.vim/undodir"
vim.opt.undofile = true

-- highlight search is true by default
vim.opt.hlsearch = true
vim.opt.incsearch = true

vim.opt.termguicolors = true

-- at least 10 lines below and above cursor
vim.opt.scrolloff = 10
vim.opt.signcolumn = "yes"

vim.opt.updatetime = 50
vim.opt.colorcolumn = "160"

vim.g.mapleader = " "
