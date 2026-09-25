return {
    {
        "nvim-treesitter/nvim-treesitter",

        lazy = false,

        build = ":TSUpdate",

        config = function()
            local treesitter = require("nvim-treesitter")

            treesitter.setup()

            local parsers = {
                "c",
                "lua",
                "vim",
                "vimdoc",

                "javascript",
                "typescript",

                "json",
                "html",
                "css",

                "bash",
                "markdown",
            }

            treesitter.install(parsers)

            vim.api.nvim_create_autocmd("FileType", {
                pattern = {
                    "c",
                    "lua",
                    "vim",

                    "javascript",
                    "typescript",
                    "typescriptreact",
                    "javascriptreact",

                    "json",
                    "html",
                    "css",

                    "bash",
                    "markdown",
                },

                callback = function()
                    vim.treesitter.start()
                end,
            })
        end,
    },
}
