return {
    {
        "nvim-neo-tree/neo-tree.nvim",
        branch = "v3.x",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "nvim-tree/nvim-web-devicons",
            "MunifTanjim/nui.nvim",
        },
        config = function()
            local neotree = require("neo-tree")

            neotree.setup({
                close_if_last_window = true,
                popup_border_style = "rounded",
                enable_git_status = true,
                enable_diagnostics = true,
                default_component_configs = {
                    icon = { folder_closed = "", folder_open = "" },
                },
                window = {
                    width = 30,
                    mappings = {
                        ["<CR>"] = "open",
                    },
                },
            })

            vim.keymap.set("n", "<C-.>", function()
                require("neo-tree.command").execute({ toggle = true })
            end, { desc = "Toggle Neo-tree" })
        end,
    },
}
