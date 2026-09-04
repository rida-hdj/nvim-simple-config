return {
    {
        "nvim-mini/mini.indentscope",
        event = { "BufReadPost", "BufNewFile" },
        version = false,
        opts = function()
            local mini = require("mini.indentscope")
            vim.api.nvim_set_hl(0, "MiniIndentscopeSymbol", {
                fg = "#C287FF",
            })
            return {
                symbol = "│",
                options = { try_as_border = true },
                draw = {
                    animation = mini.gen_animation.none(),
                },
            }
        end,
    },

    {
        "lukas-reineke/indent-blankline.nvim",
        main = "ibl",
        event = { "BufNewFile", "BufReadPost" },
        opts = {
            indent = { char = "│" },
            scope = { enabled = false },
            exclude = {
              filetypes = {
                "dashboard",
                "neo-tree",
                "TelescopePrompt",
                "toggleterm"
              },
            },
        },
    },
}
