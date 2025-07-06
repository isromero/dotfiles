return {
	"rmagatti/auto-session",
	config = function()
		require("auto-session").setup({
			-- Customize settings here, such as root_dir, ignore patterns, etc.
			-- For example:
			root_dir = vim.fn.stdpath("data") .. "/sessions",
			auto_save = true,
		})
	end,
}
