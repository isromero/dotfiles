return {
	"ahmedkhalf/project.nvim",
	event = "VeryLazy",
	config = function()
		require("project_nvim").setup({
			-- Detected root markers
			patterns = { ".git", "go.mod", "package.json" },
		})
	end,
}
