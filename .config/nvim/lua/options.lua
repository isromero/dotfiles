-- OPTIONS

local opt = vim.opt

-- UI
opt.number = true -- Show absolute line number
opt.relativenumber = true -- Show relative line numbers (recommended for efficient movement)
opt.signcolumn = "yes" -- Always show the sign column to prevent text shifting
opt.cursorline = true -- Highlight the current line

-- Tabs & Indent
opt.tabstop = 2 -- Number of spaces that a <Tab> in the file counts for
opt.shiftwidth = 2 -- Number of spaces to use for each step of (auto)indent
opt.expandtab = true -- Convert tabs to spaces
opt.smartindent = true -- Smart autoindenting when starting a new line

-- Search
opt.ignorecase = true -- Ignore case in search patterns
opt.smartcase = true -- Override ignorecase if search contains capital letters
opt.hlsearch = true -- Highlight all matches on previous search pattern
opt.incsearch = true -- Show match while typing search pattern

-- Files
opt.undofile = true -- Enable persistent undo
opt.swapfile = false -- Don't use swapfile
opt.backup = false -- Don't create backup file

-- Performance
opt.updatetime = 250 -- Faster completion (default is 4000 ms)
opt.timeoutlen = 300 -- Time to wait for a mapped sequence to complete (in ms)

-- Splits
opt.splitright = true -- Put new vertical splits to the right
opt.splitbelow = true -- Put new horizontal splits below

-- Clipboard
opt.clipboard = "unnamedplus" -- Use system clipboard (see explanation below)

-- Mouse
opt.mouse = "a" -- Enable mouse support in all modes

-- Misc
opt.scrolloff = 10 -- Minimum lines to keep above and below the cursor
opt.list = true -- Show invisible characters
opt.listchars = { tab = "» ", trail = "·", nbsp = "␣" } -- Customize symbols
opt.inccommand = "split" -- Show live substitution preview
opt.confirm = true -- Confirm before quitting modified buffer
opt.wrap = true -- Wrap lines by default (can un-toggle with)
