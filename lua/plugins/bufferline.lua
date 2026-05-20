vim.api.nvim_set_hl(0, "BufferLineFill", { bg = "#181825" })
return {
    "akinsho/bufferline.nvim",

    config = function()
        require("bufferline").setup({
            options = {
                mode = "buffers",

                separator_style = "thick",

                show_buffer_close_icons = false,
                show_close_icon = false,

                diagnostics = "nvim_lsp",

                offsets = {
                    {
                        filetype = "neo-tree",
                        text = "File Explorer",
                        highlight = "Directory",
                        text_align = "left",
                    },
                },
            },
        })
    end,
}
