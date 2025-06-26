return {
	"nvim-telescope/telescope.nvim",
	dependencies = {
		"nvim-lua/plenary.nvim",
		{
			"nvim-telescope/telescope-fzf-native.nvim",
			build = "make",
			cond = function()
				return vim.fn.executable("make") == 1
			end,
		},
		"nvim-telescope/telescope-ui-select.nvim",
	},
	cmd = "Telescope",
	keys = {
		{ "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Find files" },
		{ "<leader>fg", "<cmd>Telescope live_grep<cr>", desc = "Grep in project" },
		{ "<leader>fb", "<cmd>Telescope buffers<cr>", desc = "Find buffers" },
		{ "<leader>fh", "<cmd>Telescope help_tags<cr>", desc = "Find help" },
	},
	config = function()
		require("telescope").setup({
			defaults = {
				layout_config = { horizontal = { prompt_position = "top" } },
				sorting_strategy = "ascending",
				winblend = 0,
			},
			pickers = {
				find_files = { hidden = true },
			},
			extensions = {
				fzf = {},
				["ui-select"] = { require("telescope.themes").get_dropdown({}) },
			},
		})

		-- Load extensions
		pcall(require("telescope").load_extension, "fzf")
		pcall(require("telescope").load_extension, "ui-select")
		pcall(require("telescope").load_extension, "projects")
	end,
}
