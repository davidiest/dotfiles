-- return {
--     "olimorris/onedarkpro.nvim",
--     priority = 1000, -- Ensure it loads first
--
--     config = function()
--
--         vim.cmd("colorscheme onelight")
--
--         require("onedarkpro").setup({
--             colors = {
--                 cursorline = "#FF0000",
--             },
--
--             options = {
--                 cursorline = true,
--             },
--         })
--     end
-- }

return {
	"catppuccin/nvim",
	priority = 1000, -- Ensure it loads first

	config = function()
		-- vim.cmd("colorscheme catppuccin-frappe")
		vim.cmd("colorscheme catppuccin-latte")
	end,
}
