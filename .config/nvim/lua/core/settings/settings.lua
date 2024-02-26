-- print ("Hello from core.settings.settings!xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx")
-- disable netrw at the very start of your init.lua
-- this is for nvim.tree
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- vim.opt.guicursor = ""

vim.opt.nu = true
vim.opt.relativenumber = true


-- use spaces for tabs and whatnot
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4

vim.opt.expandtab = true
vim.opt.shiftround = true -- Rounds the indent spacing to the next multiple of shiftwidth
vim.opt.smartindent = true

vim.opt.wrap = true

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = true
vim.opt.incsearch = true

-- Case insensitive searching UNLESS /C or capital in search
vim.o.ignorecase = true
vim.o.smartcase = true

-- Enable access to System Clipboard
vim.opt.clipboard = "unnamed,unnamedplus"

vim.opt.termguicolors = true    -- needed for bufferline.lua

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

vim.opt.colorcolumn = "80"

vim.opt.timeoutlen = 300

-------------------------------------------------------------------------------

vim.opt.backspace = '2'
vim.opt.showcmd = true
vim.opt.laststatus = 2
vim.opt.autowrite = true
vim.opt.cursorline = true
vim.opt.autoread = true

-------------------------------------------------------------------------------

vim.g.python_host_prog = '/usr/bin/python'
vim.g.python3_host_prog = '/usr/bin/python3.11'

-------------------------------------------------------------------------------
