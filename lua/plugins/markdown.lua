return {
    {
        "MeanderingProgrammer/render-markdown.nvim",
        event = "BufReadPost",
        opts = {},
        config = function(_, opts)
            require("render-markdown").setup(opts)
            vim.keymap.set(
                "n", "<leader>md",
                "<cmd>RenderMarkdown toggle<CR>",
                { desc = "Toggle Markdown Render" })
        end,
    },
    {
        "roodolv/markdown-toggle.nvim",
        ft = { "markdown" },
        config = function()
            require("markdown-toggle").setup({
                use_default_keymaps = true,
        })

        end,
    },
}
