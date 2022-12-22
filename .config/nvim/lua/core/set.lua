-- vim.opt.guicursor = ""

vim.opt.nu = true
vim.opt.relativenumber = true


-- use spaces for tabs and whatnot
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2

vim.opt.expandtab = true
vim.opt.shiftround = true -- Rounds the indent spacing to the next multiple of shiftwidth
vim.opt.smartindent = true

vim.opt.wrap = true

-- vim.opt.swapfile = false
-- vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = true
vim.opt.incsearch = true

-- Case insensitive searching UNLESS /C or capital in search
vim.o.ignorecase = true
vim.o.smartcase = true


vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

vim.opt.colorcolumn = "80"
-------------------------------------------------------------------------------

vim.opt.backspace = '2'
vim.opt.showcmd = true
vim.opt.laststatus = 2
vim.opt.autowrite = true
vim.opt.cursorline = true
vim.opt.autoread = true

-------------------------------------------------------------------------------



