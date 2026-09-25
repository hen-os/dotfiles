return {
    {
        "nvim-neo-tree/neo-tree.nvim",
        branch = "v3.x",

        dependencies = {
            "nvim-lua/plenary.nvim",
            "MunifTanjim/nui.nvim",
            "nvim-tree/nvim-web-devicons",
        },

        config = function()
            require("neo-tree").setup({
                close_if_last_window = false,

                filesystem = {
                    follow_current_file = {
                        enabled = true,
                    },

                    filtered_items = {
                        visible = false,
                        hide_dotfiles = false,
                        hide_gitignored = false,
                    },
                },

                window = {
                    position = "left",
                    width = 32,
                },

                default_component_configs = {
                    indent = {
                        indent_size = 2,
                        padding = 1,

                        with_markers = true,

                        indent_marker = "│",
                        last_indent_marker = "└",
                        expander_collapsed = "",
                        expander_expanded = "",
                    },

                    git_status = {
                        symbols = {
                            added = "+",
                            modified = "~",
                            deleted = "-",
                            renamed = "→",
                            untracked = "?",
                            ignored = "◌",
                            unstaged = "○",
                            staged = "●",
                            conflict = "!",
                        },
                    },
                },
            })

            vim.keymap.set(
                "n",
                "<leader>e",
                "<cmd>Neotree toggle<CR>",
                {
                    desc = "Toggle file explorer",
                }
            )
        end,
    },
}
