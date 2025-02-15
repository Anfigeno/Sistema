require("scope").setup({})

require("bufferline").setup({
	highlights = require("mestizo.claves.integraciones.especial.bufferline"),
	options = {
		separator_style = "slope",
		diagnostics = "nvim_lsp",
		diagnostics_indicator = function(_, _, diagnostics_dict, _)
			local s = " "
			for e, n in pairs(diagnostics_dict) do
				local sym = e == "error" and " " or (e == "warning" and " " or " ")
				s = s .. n .. sym
			end
			return s
		end,
	},
})

vim.keymap.set("n", "<tab>", "<cmd>BufferLineCycleNext<cr>")
vim.keymap.set("n", "<s-tab>", "<cmd>BufferLineCyclePrev<cr>")
vim.keymap.set("n", "<space>x", "<cmd>bp<bar>sp<bar>bn<bar>bd<CR>")
vim.keymap.set("n", "<m-tab>", "<cmd>tabnext<cr>")
vim.keymap.set("n", "<s-m-tab>", "<cmd>tabnext<cr>")
