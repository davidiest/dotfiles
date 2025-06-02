return {
	"navarasu/onedark.nvim",
	priority = 1000, -- make sure to load this before all the other start plugins
	config = function()
		require("onedark").setup({
			style = "warmer",
		})
		-- Enable theme
		require("onedark").load()
	end,
}
--
-- return {
-- 	"olimorris/onedarkpro.nvim",
-- 	priority = 1000, -- Ensure it loads first
--
-- 	config = function()
-- 		-- vim.cmd("colorscheme onelight")
-- 		vim.cmd("colorscheme onedark")
--
-- 		vim.opt.cursorline = true
--
-- 		require("onedarkpro").setup({
-- 			options = {
-- 				cursorline = true,
-- 			},
-- 			colors = {
-- 				cursorline = "#FF0000",
-- 			},
-- 			highlights = {
-- 				CursorLine = { bg = "#2e3440" }, -- explicit highlight override
-- 			},
-- 		})
-- 	end,
-- }

-- return {
-- 	"catppuccin/nvim",
-- 	priority = 1000, -- Ensure it loads first
--
-- 	config = function()
-- 		vim.cmd("colorscheme catppuccin-frappe")
-- 		-- vim.cmd("colorscheme catppuccin-mocha")
-- 		-- vim.cmd("colorscheme catppuccin-macchiato")
-- 		-- vim.cmd("colorscheme catppuccin-latte")
-- 	end,
-- }
