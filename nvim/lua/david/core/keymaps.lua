vim.g.mapleader = " "

local keymap = vim.keymap

local function toggleNumbers()
	if vim.o.number then
		vim.cmd("set nonu nornu")
	else
		vim.cmd("set nu rnu")
	end
end

keymap.set("n", "<leader>pv", vim.cmd.Ex, { desc = "Open file tree" })
keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })

keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" })
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" })
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" })

keymap.set("n", "<leader>sk", "<C-w>k", { desc = "Jump to split window up" })
keymap.set("n", "<leader>sj", "<C-w>j", { desc = "Jump to split window down" })
keymap.set("n", "<leader>sh", "<C-w>h", { desc = "Jump to split window left" })
keymap.set("n", "<leader>sl", "<C-w>l", { desc = "Jump to split window right" })

keymap.set("n", "<C-u>", "<C-u>zz", { desc = "Jump to split window right" })
keymap.set("n", "<C-d>", "<C-d>zz", { desc = "Jump to split window right" })

keymap.set("n", "<leader><leader>", toggleNumbers, { desc = "Toggle line numbers", noremap = true })
