return {
    {
        "nvim-neo-tree/neo-tree.nvim",
        branch = "v3.x",
        cmd = { "Neotree" },
        keys = {
            {
                "<leader>e",
                "<cmd>Neotree toggle<cr>",
                desc = "Toggle Neo-tree",
            },
        },
        dependencies = {
            "nvim-lua/plenary.nvim",
            "nvim-tree/nvim-web-devicons",
            "MunifTanjim/nui.nvim",
        },
        config = function()
            local neotree = require("neo-tree")

            vim.diagnostic.config({
                signs = {
                    text = {
                        [vim.diagnostic.severity.ERROR] = '',
                        [vim.diagnostic.severity.WARN] = '',
                        [vim.diagnostic.severity.INFO] = '',
                        [vim.diagnostic.severity.HINT] = '󰌵',
                    },
                }
            })
            neotree.setup({
                close_if_last_window = true,
                popup_border_style = "rounded",
                enable_git_status = true,
                enable_diagnostics = true,
                default_component_configs = {
                    icon = { folder_closed = "", folder_open = "" },
                    git_status = {
                        symbols = {
                            added     = "+",
                            modified  = "~",
                            deleted   = "-",
                            renamed   = "→",
                            untracked = "?",
                            ignored   = "◌",
                            unstaged  = "",
                            staged    = "✓",
                            conflict  = "×",
                        }
                    }
                },
                window = {
                    width = 35,
                    mappings = {
                        ["<CR>"] = "open",
                    },
                },
                filesystem = {
                    follow_current_file = {
                        enabled = true,
                    },
                },
            })

            vim.keymap.set("n", "<leader>e", function()
                require("neo-tree.command").execute({ toggle = true })
            end, { desc = "Toggle Neo-tree" })
        end,
    },
}
