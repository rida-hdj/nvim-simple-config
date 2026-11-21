return {
    "akinsho/toggleterm.nvim",

    keys = {
        {
            "<C-t>",
            "<cmd>ToggleTerm<cr>",
            desc = "Toggle Terminal",
        },
    },

    opts = {
        direction = "horizontal",
        size = 10,
        start_in_insert = true,
        persist_mode = true,
        close_on_exit = true,
    },

    config = function(_, opts)
        require("toggleterm").setup(opts)
    end,
}
