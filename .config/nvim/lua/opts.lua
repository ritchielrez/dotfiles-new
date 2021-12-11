-- Show me line numbers relative to current line
-- E.g. if your current line is 2, then it's gonna show 2 for the current line, 1 for the previuos or the next line.
-- This is happening because it's showing you how many lines down or up a specific line is from your current line that you're working on
vim.wo.number = true
vim.wo.relativenumber = true

-- Let's set up the tabs!!
vim.o.expandtab = true
vim.bo.expandtab = true

vim.o.shiftwidth = 4
vim.bo.shiftwidth = 4

vim.o.softtabstop = 4
vim.bo.softtabstop = 4

vim.o.swapfile = false
vim.bo.swapfile = false

-- Leader key is used to make unique keymaps
vim.g.mapleader = " "
vim.b.mapleader = " "

-- Termguicolors is needed for nvim-colorizer, which is gonna visualiize the color codes
vim.o.termguicolors = true
vim.b.termguicolors = true

-- Signcolumn is a column where we could see the erros signs
vim.o.signcolumn = "yes"
vim.wo.signcolumn = "yes"

-- Set completeopt to have a better completion experience
-- :help completeopt
-- menuone: popup even when there's only one match
-- noinsert: Do not insert text until a selection is made
-- noselect: Do not select, force user to select one from the menu
vim.o.completeopt = "menuone,noinsert,noselect"
vim.b.completeopt = "menuone,noinsert,noselect"




