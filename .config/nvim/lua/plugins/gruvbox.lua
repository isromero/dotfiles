return {
	"ellisonleao/gruvbox.nvim",
	priority = 1000,
	lazy = false,
	opts = {
		terminal_colors = true,
		undercurl = true,
		underline = true,
		bold = true,
		italic = {
			strings = true,
			emphasis = true,
			comments = true,
			operators = false,
			folds = true,
		},
		contrast = "hard", -- "hard" | "soft" | ""
		palette_overrides = {},
		overrides = {},
		dim_inactive = false,
		transparent_mode = false,
	},
	config = function(_, opts)
		require("gruvbox").setup(opts)
		vim.cmd.colorscheme("gruvbox")
	end,
}
