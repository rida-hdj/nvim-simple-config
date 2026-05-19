return {
    {
        'nvim-telescope/telescope.nvim',
        cmd = "Telescope",
        dependencies = {
            'nvim-lua/plenary.nvim',
            'ibhagwan/fzf-lua',
            'wsdjeg/picker.nvim',
        },
    },
    {
        "DrKJeff16/project.nvim",
        opts = {
            detection_methods = { "lsp", "pattern" },
            patterns = { ".git", "Makefile", "package.json", },
        },
        config = function(_, opts)
            require("project").setup(opts)
            require("telescope").load_extension("projects")
        end,
    },
    {
        "nvim-telescope/telescope-ui-select.nvim",
        config = function()
            require("telescope").setup {
                extensions = {
                    ["ui-select"] = {
                        require("telescope.themes").get_dropdown {
                        }
                    }
                }
            }
            require("telescope").load_extension("ui-select")
        end
    },
}
