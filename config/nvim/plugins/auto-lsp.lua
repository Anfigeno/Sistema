local capabilities = require("cmp_nvim_lsp").default_capabilities()

require("auto-lsp").setup({
	["*"] = function()
		return { capabilities = capabilities }
	end,

	["lua_ls"] = function()
		return {
			capabilities = capabilities,
			settings = { Lua = { hint = {
				enable = true,
				setType = true,
			} } },
		}
	end,

	["ts_ls"] = function()
		return {
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
		}
	end,
})
