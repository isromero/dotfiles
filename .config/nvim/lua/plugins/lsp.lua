return {
	"neovim/nvim-lspconfig",
	event = { "BufReadPre", "BufNewFile" },
	dependencies = {
		{ "williamboman/mason.nvim", config = true },
		{ "williamboman/mason-lspconfig.nvim", config = true },
	},
	config = function()
		require("mason").setup()

		require("mason-lspconfig").setup({
			ensure_installed = {
				"gopls", -- Go
				"lua_ls", -- Lua (for Neovim config)
			},
		})

		local lspconfig = require("lspconfig")

		-- Go
		lspconfig.gopls.setup({})

		-- Lua (for Neovim config)
		lspconfig.lua_ls.setup({
			settings = {
				Lua = {
					diagnostics = {
						globals = { "vim" }, -- remove warning about 'vim' being undefined
					},
					workspace = { checkThirdParty = false },
					telemetry = { enable = false },
				},
			},
		})
	end,
}
