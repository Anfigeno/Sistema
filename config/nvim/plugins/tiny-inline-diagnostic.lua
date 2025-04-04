vim.diagnostic.config({ virtual_text = false })

require("tiny-inline-diagnostic").setup({
	options = {
		show_source = true,
		use_icons_from_diagnostics = true,
		multilines = {
			enabled = true,
			always_show = true,
		},
	},
})
