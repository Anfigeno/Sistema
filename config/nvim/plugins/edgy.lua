vim.opt.laststatus = 3
vim.opt.splitkeep = "screen"

local edgy = require("edgy")

edgy.setup({
	animate = { enabled = false },
	bottom = {
		{
			title = "Terminal",
			ft = "toggleterm",
			size = { height = 0.4 },
			filter = function(buf, win)
				return vim.api.nvim_win_get_config(win).relative == ""
			end,
		},
	},
	left = {
		{
			title = "Estado de git",
			ft = "neo-tree",
			filter = function(buf)
				return vim.b[buf].neo_tree_source == "git_status"
			end,
			size = { height = 0.5, width = 0.2 },
			pinned = true,
			collapsed = false,
			open = "Neotree position=right git_status",
		},
		{
			title = "Explorador de archivos",
			ft = "neo-tree",
			filter = function(buf)
				return vim.b[buf].neo_tree_source == "filesystem"
			end,
			size = { height = 0.5, width = 0.2 },
			pinned = true,
			collapsed = false,
			open = "Neotree toggle focus",
		},
	},
	right = {
		{
			title = "Simbolos",
			ft = "trouble",
			-- filter = function(buf)
			-- 	return vim.b[buf].neo_tree_source == "git_status"
			-- end,
			size = { height = 0.5, width = 0.2 },
			pinned = true,
			collapsed = false,
			open = "Trouble symbols toggle focus=false",
		},
    {
			title = "Diagnosticos",
			ft = "trouble",
			-- filter = function(buf)
			-- 	return vim.b[buf].neo_tree_source == "git_status"
			-- end,
			size = { height = 0.5, width = 0.2 },
			pinned = true,
			collapsed = false,
			open = "Trouble diagnostics toggle focus=false",
		},
	},
})

vim.keymap.set("n", "<c-h>", function()
	edgy.toggle("left")
end)

vim.keymap.set("n", "<c-l>", function()
	edgy.toggle("right")
end)
