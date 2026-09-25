return {
    {
        "stevearc/dressing.nvim",
        event = "VeryLazy",

        opts = {
            input = {
                border = "rounded",
                relative = "cursor",
            },

            select = {
                backend = {
                    "telescope",
                    "builtin",
                },
            },
        },
    },

    {
        "folke/which-key.nvim",
        event = "VeryLazy",

        opts = {
            preset = "modern",

            win = {
                border = "rounded",
                padding = {
                    1,
                    2,
                },
            },
        },
    },
}
