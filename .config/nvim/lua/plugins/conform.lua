return {
	"stevearc/conform.nvim",
	event = { "BufWritePre" },
	opts = {
		format_on_save = {
			timeout_ms = 1000,
			lsp_fallback = true,
		},
		formatters_by_ft = {
			lua = { "stylua" },
			go = { "goimports" },
			javascript = { "prettier" },
			javascriptreact = { "prettier" },
			typescript = { "prettier" },
			typescriptreact = { "prettier" },
			json = { "prettier" },
			yaml = { "prettier" },
			markdown = { "prettier" },
		},
	},
}
