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
        local actions = require("telescope.actions")
        local builtin = require('telescope.builtin')

        telescope.setup({

            defaults = {
                path_display = { "smart" },
            }
        })

        telescope.load_extension("fzf")

        vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = "Search File" })
        vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = "Search Text" })
        vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = "Live Buffers" })
        vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = "Telescope Help" })

    end,

}
