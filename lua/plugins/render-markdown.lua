return {
    "MeanderingProgrammer/render-markdown.nvim",
    opts = {},
    config = function(_, opts)
        require("render-markdown").setup(opts)
        vim.keymap.set(
            "n", "<leader>md",
            "<cmd>RenderMarkdown toggle<CR>",
            { desc = "Toggle Markdown Render" })
    end,
}
