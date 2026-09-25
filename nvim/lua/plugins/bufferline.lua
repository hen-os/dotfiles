return {
    {
        "akinsho/bufferline.nvim",
        version = "*",

        dependencies = {
            "nvim-tree/nvim-web-devicons",
            "famiu/bufdelete.nvim",
        },

        config = function()
            require("bufferline").setup({
                options = {
                    mode = "buffers",

                    style_preset = require("bufferline").style_preset.minimal,

                    numbers = "none",

                    close_command = function(bufnr)
                        require("bufdelete").bufdelete(bufnr, false)
                    end,

                    right_mouse_command = function(bufnr)
                        require("bufdelete").bufdelete(bufnr, false)
                    end,

                    indicator = {
                        style = "underline",
                    },

                    buffer_close_icon = "×",
                    modified_icon = "●",
                    close_icon = "×",

                    left_trunc_marker = "‹",
                    right_trunc_marker = "›",

                    diagnostics = "nvim_lsp",

                    diagnostics_indicator = function(count)
                        return " " .. count
                    end,

                    offsets = {
                        {
                            filetype = "neo-tree",
                            text = "EXPLORER",
                            text_align = "left",
                            separator = true,
                        },
                    },

                    separator_style = "thin",

                    always_show_bufferline = true,

                    show_buffer_close_icons = false,
                    show_close_icon = false,

                    enforce_regular_tabs = false,
                    max_name_length = 24,
                    tab_size = 20,
                },

                highlights = {
                    fill = {
                        bg = "#080d0f",
                    },

                    background = {
                        fg = "#53605f",
                        bg = "#080d0f",
                    },

                    buffer_selected = {
                        fg = "#c3c8c6",
                        bg = "#11191c",
                        bold = true,
                        italic = false,
                    },

                    indicator_selected = {
                        fg = "#68aaa5",
                        bg = "#11191c",
                    },

                    modified = {
                        fg = "#d05d50",
                        bg = "#080d0f",
                    },

                    modified_selected = {
                        fg = "#d3b75f",
                        bg = "#11191c",
                    },

                    separator = {
                        fg = "#243337",
                        bg = "#080d0f",
                    },

                    separator_selected = {
                        fg = "#243337",
                        bg = "#11191c",
                    },

                    offset_separator = {
                        fg = "#243337",
                        bg = "#080d0f",
                    },
                },
            })
        end,
    },
}
