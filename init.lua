-- <options>
vim.g.mapleader = " "
vim.g.maplocalleader = ","

vim.opt.number = true
vim.opt.scrolloff = 10
vim.opt.termguicolors = false
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.hlsearch = true
-- </options>

-- <generic mappings>
vim.keymap.set("i", "jk", "<esc>")
vim.keymap.set("n", "<Leader>/", ":nohlsearch<cr>")
-- </generic mappings>

-- <plaintex mappings>
vim.keymap.set("n", "<LocalLeader><LocalLeader>", ":w<cr> :silent !pdftex %<cr>")
-- </plaintex mappings>

