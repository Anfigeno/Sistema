local colores = require("gruvbox").palette

require("modes").setup({
	colors = {
		bg = colores.dark0,
		copy = colores.neutral_yellow,
		delete = colores.neutral_red,
		insert = colores.neutral_blue,
		visual = colores.neutral_purple,
	},
})