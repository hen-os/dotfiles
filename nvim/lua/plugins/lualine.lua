return {
    {
        "nvim-lualine/lualine.nvim",

        config = function()
            local theme = {
                normal = {
                    a = {
                        fg = "#080d0f",
                        bg = "#bca88b",
                        gui = "bold",
                    },
                    b = {
                        fg = "#c3c8c6",
                        bg = "NONE",
                    },
                    c = {
                        fg = "#7b8685",
                        bg = "NONE",
                    },
                },

                insert = {
                    a = {
                        fg = "#080d0f",
                        bg = "#68aaa5",
                        gui = "bold",
                    },
                },

                visual = {
                    a = {
                        fg = "#080d0f",
                        bg = "#d3b75f",
                        gui = "bold",
                    },
                },

                replace = {
                    a = {
                        fg = "#080d0f",
                        bg = "#d05d50",
                        gui = "bold",
                    },
                },

                command = {
                    a = {
                        fg = "#080d0f",
                        bg = "#d28b57",
                        gui = "bold",
                    },
                },

                inactive = {
                    a = {
                        fg = "#53605f",
                        bg = "NONE",
                    },
                    b = {
                        fg = "#53605f",
                        bg = "NONE",
                    },
                    c = {
                        fg = "#53605f",
                        bg = "NONE",
                    },
                },
            }

            require("lualine").setup({
                options = {
                    theme = theme,

                    globalstatus = true,

                    component_separators = "",
                    section_separators = "",

                    disabled_filetypes = {
                        statusline = {
                            "dashboard",
                        },
                    },
                },

                sections = {
                    lualine_a = {
                        {
                            "mode",

                            fmt = function(mode)
                                local modes = {
                                    NORMAL = "N",
                                    INSERT = "I",
                                    VISUAL = "V",
                                    ["V-LINE"] = "VL",
                                    ["V-BLOCK"] = "VB",
                                    REPLACE = "R",
                                    COMMAND = "C",
                                }

                                return modes[mode] or mode
                            end,
                        },
                    },

                    lualine_b = {
                        "branch",
                    },

                    lualine_c = {
                        {
                            "filename",
                            path = 1,
                        },
                    },

                    lualine_x = {
                        "diagnostics",
                        "encoding",
                        "filetype",
                    },

                    lualine_y = {
                        "progress",
                    },

                    lualine_z = {
                        "location",
                    },
                },
            })
        end,
    },
}
