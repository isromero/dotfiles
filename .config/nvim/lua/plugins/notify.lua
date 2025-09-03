return {
	"rcarriga/nvim-notify",
	event = "VeryLazy",
	config = function()
		vim.notify = require("notify").setup({
			background_colour = "#1d2021",
		})
	end,
}
