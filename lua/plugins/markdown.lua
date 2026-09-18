return {
    {
        "MeanderingProgrammer/render-markdown.nvim",
        event = "BufReadPost",
        opts = {
            heading = {
                width = "block",
                right_pad = 2,
                backgrounds = {
                    "RenderMarkdownH1Bg",
                    "RenderMarkdownH2Bg",
                    "RenderMarkdownH3Bg",
                    "RenderMarkdownH4Bg",
                    "RenderMarkdownH5Bg",
                    "RenderMarkdownH6Bg",
                },
            },
            code = {
                width = "block",
                left_pad = 2,
                right_pad = 2,
            },
        },
        config = function(_, opts)
            require("render-markdown").setup(opts)
            vim.keymap.set(
                "n", "<leader>md",
                "<cmd>RenderMarkdown toggle<CR>",
                { desc = "Toggle Markdown Render" })
        end,
    },
}
