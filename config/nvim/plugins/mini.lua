require("mini.surround").setup()

require("mini.move").setup({
	mappings = {
		left = "<M-h>",
		down = "<M-j>",
		up = "<M-k>",
		right = "<M-l>",
		line_left = "<M-h>",
		line_down = "<M-j>",
		line_up = "<M-k>",
		line_right = "<M-l>",
	},
	options = {
		reindent_linewise = true,
	},
})