return {
	"sindrets/diffview.nvim",
	dependencies = { "nvim-lua/plenary.nvim" },
	cmd = { "DiffviewOpen", "DiffviewClose", "DiffviewToggleFiles", "DiffviewFocusFiles" },
	config = function()
		require("diffview").setup()

		vim.keymap.set("n", "<leader>gd", ":DiffviewOpen<CR>", { desc = "Open Git Diff" })
		vim.keymap.set("n", "<leader>gD", ":DiffviewClose<CR>", { desc = "Close Git Diff" })
	end,
}
