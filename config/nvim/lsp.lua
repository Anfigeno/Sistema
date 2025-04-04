-- Formato de diagnosticos
-- vim.diagnostic.config({
-- 	virtual_text = {
-- 		format = function(diagnostic)
-- 			return string.format("[%s] %s - %s", diagnostic.source, diagnostic.message, diagnostic.code)
-- 		end,
-- 	},
-- })

-- Iconos
vim.fn.sign_define("DiagnosticSignError", { text = " ", texthl = "DiagnosticSignError" })
vim.fn.sign_define("DiagnosticSignWarn", { text = " ", texthl = "DiagnosticSignWarn" })
vim.fn.sign_define("DiagnosticSignInfo", { text = " ", texthl = "DiagnosticSignInfo" })
vim.fn.sign_define("DiagnosticSignHint", { text = "󰌵", texthl = "DiagnosticSignHint" })

-- LSP's
local capabilities = require("cmp_nvim_lsp").default_capabilities()
local lspconfig = require("lspconfig")
local configuracion_por_defecto = { capabilities = capabilities }
local servidores = { "nixd", "svelte", "cssls", "html", "jsonls", "prismals", "biome" }

for _, servidor in ipairs(servidores) do
	lspconfig[servidor].setup(configuracion_por_defecto)
end

lspconfig.lua_ls.setup({
	capabilities = capabilities,
	settings = { Lua = { hint = {
		enable = true,
		setType = true,
	} } },
})

lspconfig.ts_ls.setup({
	capabilities = capabilities,
	settings = {
		javascript = {
			inlayHints = {
				includeInlayEnumMemberValueHints = true,
				includeInlayFunctionLikeReturnTypeHints = true,
				includeInlayFunctionParameterTypeHints = true,
				includeInlayParameterNameHints = "all",
				includeInlayParameterNameHintsWhenArgumentMatchesName = true,
				includeInlayPropertyDeclarationTypeHints = true,
				includeInlayVariableTypeHints = true,
			},
		},
		typescript = {
			inlayHints = {
				includeInlayEnumMemberValueHints = true,
				includeInlayFunctionLikeReturnTypeHints = true,
				includeInlayFunctionParameterTypeHints = true,
				includeInlayParameterNameHints = "all",
				includeInlayParameterNameHintsWhenArgumentMatchesName = true,
				includeInlayPropertyDeclarationTypeHints = true,
				includeInlayVariableTypeHints = true,
			},
		},
	},
})
