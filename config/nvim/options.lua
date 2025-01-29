vim.opt.termguicolors = true
vim.opt.number = true
vim.opt.autoindent = true
vim.opt.expandtab = true
vim.opt.showcmd = true
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.clipboard = "unnamedplus"
vim.opt.relativenumber = true
vim.opt.shell = "fish"

vim.diagnostic.config({
	virtual_text = {
		source = true,
	},
	float = {
		source = "always",
	},
})

vim.keymap.set("n", "<c-s>", "<cmd>w<cr>")
