return {
	{
		"ellisonleao/gruvbox.nvim",
		priority = 1000,
		config = true,
		opts = {
			overrides = {
				-- base diagnostic text
				DiagnosticError = { fg = "#9e2d20" }, -- greyed red
				DiagnosticWarn = { fg = "#b57614" }, -- greyed yellow
				DiagnosticInfo = { fg = "#5f8787" }, -- greyed blue
				DiagnosticHint = { fg = "#6f8f7f" }, -- greyed aqua
				DiagnosticOk = { fg = "#8f9a3c" }, -- greyed green

				-- virtual text (slightly more muted)
				DiagnosticVirtualTextError = { fg = "#9e2d20" },
				DiagnosticVirtualTextWarn = { fg = "#9c7a18" },
				DiagnosticVirtualTextInfo = { fg = "#507c7c" },
				DiagnosticVirtualTextHint = { fg = "#5f7f6f" },
				DiagnosticVirtualTextOk = { fg = "#7f873a" },

				-- floating diagnostics
				DiagnosticFloatingError = { fg = "#9e2d20" },
				DiagnosticFloatingWarn = { fg = "#b57614" },
				DiagnosticFloatingInfo = { fg = "#5f8787" },
				DiagnosticFloatingHint = { fg = "#6f8f7f" },
				DiagnosticFloatingOk = { fg = "#8f9a3c" },
			},
		},
	},
	{
		"LazyVim/LazyVim",
		opts = {
			colorscheme = "gruvbox",
		},
	},
	{
		"neovim/nvim-lspconfig",
		opts = {
      inlay_hints = { enabled = false },
			servers = {
				basedpyright = {
					settings = {
						basedpyright = {
							analysis = {
								diagnosticSeverityOverrides = {
									reportAny = false,
									reportMissingParameterType = false,
									reportMissingTypeStubs = false,
									reportUnannotatedClassAttribute = false,
									reportUnknownArgumentType = false,
									reportUnknownMemberType = false,
									reportUnknownParameterType = false,
									reportUnknownVariableType = false,
									reportUnreachable = false,
									reportUnusedParameter = false,
								},
							},
						},
					},
				},
			},
		},
	},
	{
		"folke/snacks.nvim",
		opts = {
			explorer = { enabled = false },
		},
	},
	{
		"folke/noice.nvim",
		opts = {
			presets = {
				lsp_doc_border = true,
			},
		},
	},
	{
		"folke/flash.nvim",
		keys = {
			{ "s", mode = { "n", "x", "o" }, false },
		},
	},
	{ "akinsho/bufferline.nvim", enabled = false },
	{
		"saghen/blink.cmp",
		opts = {
			completion = {
				documentation = {
					window = {
						border = "rounded",
					},
				},
			},
			keymap = {
				preset = "super-tab",
				["<Tab>"] = {
					function(cmp)
						if cmp.snippet_active() then
							return cmp.accept()
						else
							return cmp.select_and_accept()
						end
					end,
					"snippet_forward",
					"fallback",
				},
				["<C-k>"] = { "select_prev", "fallback" },
				["<C-j>"] = { "select_next", "fallback" },
			},
		},
	},
	{
		"stevearc/aerial.nvim",
		opts = {
			layout = {
				max_width = { 100, 0.3 },
				width = nil,
				min_width = 50,
			},
		},
	},
}
