return {
    {
        "lewis6991/gitsigns.nvim",
        event = { "BufReadPre", "BufNewFile" },
        opts = {
            signs = {
                add = { text = "+" },
                change = { text = "~" },
                delete = { text = "_" },
                topdelete = { text = "‾" },
                changedelete = { text = "~" },
            },

            signcolumn = true,
            numhl = false,

            current_line_blame = true,
            watch_gitdir = { interval = 1000 },
            attach_to_untracked = true,
        },
    },
}
