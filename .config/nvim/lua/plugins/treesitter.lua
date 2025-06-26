return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	event = { "BufReadPost", "BufNewFile" },
	main = "nvim-treesitter.configs",
	opts = {
		-- languages to install
		ensure_installed = {
			"bash",
			"c",
			"cpp",
			"go",
			"html",
			"javascript",
			"json",
			"lua",
			"markdown",
			"markdown_inline",
			"python",
			"tsx",
			"typescript",
			"vim",
			"vimdoc",
			"yaml",
		},
		-- auto install missing parsers when opening a file
		auto_install = true,
		highlight = {
			enable = true,
			-- disable = {}, -- you can disable for certain languages
			additional_vim_regex_highlighting = false,
		},
		indent = {
			enable = true,
		},
		-- optional: incremental selection (very useful)
		incremental_selection = {
			enable = true,
			keymaps = {
				init_selection = "<CR>",
				node_incremental = "<CR>",
				scope_incremental = "<S-CR>",
				node_decremental = "<BS>",
			},
		},
		-- optional: rainbow brackets
		-- rainbow = {
		--   enable = true,
		--   extended_mode = true,
		--   max_file_lines = nil,
		-- },
	},
}
