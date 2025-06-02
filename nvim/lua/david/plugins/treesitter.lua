return {
	"nvim-treesitter/nvim-treesitter",
	event = { "BufReadPre", "BufNewFile" },
	build = ":TSUpdate",
	dependencies = {
		"windwp/nvim-ts-autotag",
	},

	config = function()
		local treesitter = require("nvim-treesitter.configs")

		treesitter.setup({
			sync_install = false,

			auto_install = false,

			ignore_install = {},

			highlight = { enable = true },

			indent = { enable = true },

			autotag = { enable = true },

			ensure_installed = {
				"json",
				"javascript",
				"typescript",
				"tsx",
				"php",
				"cmake",
				"yaml",
				"html",
				"css",
				"prisma",
				"markdown",
				"markdown_inline",
				"svelte",
				"graphql",
				"bash",
				"lua",
				"vim",
				"dockerfile",
				"gitignore",
				"query",
				"vimdoc",
				"c",
				"go",
			},
		})
	end,
}
