vim.opt.updatetime = 250
vim.opt.timeoutlen = 300

vim.opt.mouse = 'a'
vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.breakindent = true
vim.opt.undofile = true

vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.opt.signcolumn = "yes"
vim.opt.cursorline = true
vim.opt.scrolloff = 8

vim.opt.splitright = true
vim.opt.splitbelow = true

vim.opt.clipboard = "unnamedplus"

vim.opt.list = true
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }
vim.opt.inccommand = 'split'
vim.opt.confirm = true
vim.opt.showmode = true

vim.opt.completeopt = {
    "menuone",
    "noselect",
    "popup",
}
