return {
	"zbirenbaum/copilot.lua",
	event = "InsertEnter",
	config = function()
		require("copilot").setup({
			suggestion = {
				enabled = true,
				auto_trigger = false, -- Suggestions are manual only
				keymap = {
					accept = "<C-l>", -- Accept suggestion
					next = "<C-j>", -- Next suggestion
					prev = "<C-k>", -- Previous suggestion
					dismiss = "<C-h>", -- Dismiss suggestion
				},
			},
			panel = { enabled = false }, -- No suggestion panel
		})
	end,
}
