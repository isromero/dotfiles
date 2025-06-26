return {
	"akinsho/bufferline.nvim",
	version = "*",
	dependencies = "nvim-tree/nvim-web-devicons",
	event = "VimEnter",
	config = function()
		vim.opt.termguicolors = true
		vim.opt.showtabline = 2

		require("bufferline").setup({
			options = {
				mode = "buffers",
				numbers = "ordinal",
				diagnostics = "nvim_lsp",
				separator_style = "thin",
				always_show_bufferline = true,
				offsets = {
					{
						filetype = "neo-tree",
						text = "File Explorer",
						highlight = "Directory",
						separator = true,
					},
				},
			},
		})
	end,
}
