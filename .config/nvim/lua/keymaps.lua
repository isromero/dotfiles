-- KEYMAPS

local map = vim.keymap.set
local opts = { noremap = true, silent = true }

-- Clear search with <Esc>
map("n", "<Esc>", "<cmd>nohlsearch<CR>", opts)

-- Split navigation (Ctrl + hjkl)
map("n", "<C-h>", "<C-w>h", opts)
map("n", "<C-l>", "<C-w>l", opts)
map("n", "<C-j>", "<C-w>j", opts)
map("n", "<C-k>", "<C-w>k", opts)

-- Terminal mode: escape with <Esc><Esc>
map("t", "<Esc><Esc>", "<C-\\><C-n>", opts)

-- Diagnostic list
map("n", "<leader>q", vim.diagnostic.setloclist, { desc = "Open diagnostics list" })

-- Go to buffer 1-9 using <leader>1 ... <leader>9
for i = 1, 9 do
	vim.keymap.set("n", "<leader>" .. i, function()
		require("bufferline").go_to(i)
	end, { desc = "Go to buffer " .. i })
end

-- Smartly close the current buffer without breaking layout or focus
vim.keymap.set("n", "<leader>w", function()
	local current = vim.api.nvim_get_current_buf()
	vim.cmd("BufferLineCyclePrev") -- Move to previous buffer
	vim.api.nvim_buf_delete(current, {}) -- Delete the original buffer
end, { desc = "Close current buffer" })

-- Close all buffers except the current one (preserves layout and focus)
vim.keymap.set("n", "<leader>W", function()
	local current = vim.api.nvim_get_current_buf()
	local buffers = vim.api.nvim_list_bufs()
	for _, buf in ipairs(buffers) do
		if vim.api.nvim_buf_is_loaded(buf) and buf ~= current then
			vim.api.nvim_buf_delete(buf, {})
		end
	end
end, { desc = "Close all buffers except current" })

-- Pick a buffer to close interactively (requires bufferline)
vim.keymap.set("n", "<leader>p", ":BufferLinePickClose<CR>", { desc = "Pick buffer to close" })

-- Toggle word wrap
vim.keymap.set("n", "<leader>tw", function()
	vim.opt.wrap = not vim.opt.wrap:get()
end, { desc = "Toggle Word Wrap" })
