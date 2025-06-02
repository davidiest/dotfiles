return {

	"nvim-telescope/telescope.nvim",

	branch = "0.1.x",

	dependencies = {
		"nvim-lua/plenary.nvim",

		{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },

		"nvim-tree/nvim-web-devicons",
	},

	config = function()
		local telescope = require("telescope")
		local builtin = require("telescope.builtin")
		local actions = require("telescope.actions")

		telescope.setup({

			defaults = {
				-- path_display = { "smart" },
				file_ignore_patterns = {
					"node_modules",
					-- "vendor",
					"dist",
					".git",
					".next",
				},
			},

			pickers = {
				find_files = {
					hidden = true,
				},
			},
			extensions = {
				fuzzy = true, -- false will only do exact matching
				override_generic_sorter = true, -- override the generic sorter
				override_file_sorter = true, -- override the file sorter
				case_mode = "smart_case", -- or "ignore_case" or "respect_case"
			},
		})

		telescope.load_extension("fzf")

		vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Search File" })
		vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Search Text" })
		vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "Live Buffers" })
		vim.keymap.set("n", "<leader>fh", builtin.help_tags, { desc = "Telescope Help" })
	end,
}
