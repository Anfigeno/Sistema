local kulala = require("kulala")

kulala.setup({
	global_keymaps = false,
})

vim.keymap.set("n", "zz", kulala.run)
