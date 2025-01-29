local formateadores_para_js = { "biome", "prettier" }
vim.g.neoformat_enabled_typescript = formateadores_para_js
vim.g.neoformat_enabled_javascript = formateadores_para_js
vim.g.neoformat_enabled_json = formateadores_para_js

vim.keymap.set('n', '<s-f>', "<cmd>Neoformat<cr>", { desc = 'Formatea el buffer' })