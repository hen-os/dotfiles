return {
    {
        "nvim-telescope/telescope.nvim",
        dependencies = {
            "nvim-lua/plenary.nvim",
        },

        config = function()
            local telescope = require("telescope")

            telescope.setup({
                defaults = {
                    prompt_prefix = "  ",
                    selection_caret = "  ",

                    sorting_strategy = "ascending",

                    layout_strategy = "horizontal",

                    layout_config = {
                        horizontal = {
                            prompt_position = "top",
                            preview_width = 0.55,
                        },

                        width = 0.80,
                        height = 0.75,
                    },

                    border = true,

                    path_display = {
                        "truncate",
                    },
                },

                pickers = {
                    find_files = {
                        hidden = true,
                    },
                },
            })
        end,
    },
}
