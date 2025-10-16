-- <options>
vim.g.mapleader = " "
vim.g.maplocalleader = ","

vim.opt.number = true
vim.opt.scrolloff = 10
vim.opt.termguicolors = false
---- <tabs>
  vim.opt.tabstop = 2
  vim.opt.shiftwidth = 2
  vim.opt.softtabstop = 2
  vim.opt.expandtab = true
---- </tabs>
vim.opt.hlsearch = true
-- </options>

-- <generic mappings>
vim.keymap.set("i", "jk", "<esc>")
vim.keymap.set("n", "<Leader>/", ":nohlsearch<cr>")
-- </generic mappings>

-- <plaintex mappings>
vim.api.nvim_create_autocmd("FileType", {
  pattern = "plaintex",
  callback = function(event)
		-- Write and compile
		vim.keymap.set(
			"n", "<LocalLeader><LocalLeader>",
			":w<cr> | :silent !luatex %<cr>",
			{buffer = event.buf}
		)
  end,
})
-- </plaintex mappings>

