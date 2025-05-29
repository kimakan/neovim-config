return {
	{ "ellisonleao/gruvbox.nvim" },
	{
		"LazyVim/LazyVim",
		opts = {
			colorscheme = "gruvbox",
		},
	},
	--	{
	--		"williamboman/mason.nvim",
	--		opts = {
	--			ensure_installed = {
	--				"gofumpt",
	--				"goimports",
	--				"gopls",
	--				"lua-language-server",
	--				"pyright",
	--				"prettier",
	--				"ruff",
	--				"shfmt",
	--				"stylua",
	--			},
	--		},
	--	},
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
