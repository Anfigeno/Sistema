local colores = require("gruvbox").palette

require("hlchunk").setup({
	indent = { enable = false },
	line_num = { enable = false },
	blank = { enable = false },
	chunk = {
		enable = true,
		style = {
			{ fg = colores.dark2 },
			{ fg = colores.neutral_red },
		},
	},
})
