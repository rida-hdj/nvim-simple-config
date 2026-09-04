return {
    -- =============================
    -- CATPPUCCIN
    -- =============================
    {
        "catppuccin/nvim",
        lazy = false,
        priority = 1000,
        name = "catppuccin",

        config = function()
            require("catppuccin").setup({})

            vim.cmd.colorscheme("catppuccin-mocha")
        end,
    },

    -- =============================
    -- LUALINE
    -- =============================
    {
        "nvim-lualine/lualine.nvim",
        event = "VeryLazy",

        dependencies = {
            "nvim-tree/nvim-web-devicons",
        },

        config = function()
            require("lualine").setup({
                options = {
                    disabled_filetypes = {
                        statusline = {
                            "dashboard",
                            "TelescopePrompt",
                        },
                    },
                    theme = 'auto',
                    icons_enabled = true,
                    section_separators = { left = '', right = '' },
                    component_separators = { left = '󰿟', right = '󰿟' },
                    globalstatus = true,
                },
                sections = {
                    lualine_a = {
                        {
                            'mode',
                            fmt = function(str)
                                return str:sub(1, 1):upper()
                            end,
                        }
                    },
                    lualine_b = { "branch" },
                    lualine_c = {
                        { "filename", path = 1 },
                    },
                    lualine_x = { "diagnostics", "filetype" },
                    lualine_y = { "searchcount" },
                    lualine_z = { "lsp_status" },
                },
            })
        end,
    },

    -- =============================
    -- CSS COLORS HIGHLIGHT
    -- =============================
    {
        "brenoprata10/nvim-highlight-colors",
        event = { "BufReadPost", "BufNewFile" },

        config = function()
            require("nvim-highlight-colors").setup({})
        end,
    },
    {
        "folke/todo-comments.nvim",
        event = "BufReadPost",
        opts = {},
        config = function(_, opts)
            require("todo-comments").setup(opts)

            pcall(vim.api.nvim_del_user_command, "TodoFzfLua")
            pcall(vim.api.nvim_del_user_command, "TodoTrouble")
        end,
    },
}
