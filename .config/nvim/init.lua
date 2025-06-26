-- Set <space> as leader key
vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.opt.guifont = "JetBrainsMono Nerd Font"

-- Install Lazy.nvim if not installed
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

-- Highlight when yanking
vim.api.nvim_create_autocmd("TextYankPost", {
	pattern = "*",
	callback = function()
		vim.highlight.on_yank({ higroup = "IncSearch", timeout = 200 })
	end,
})

-- Load options and keymaps
require("options")
require("keymaps")

-- Load plugins
require("lazy").setup({
	{ import = "plugins" },
}, {})
