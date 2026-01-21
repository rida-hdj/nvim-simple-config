return {
    "vyfor/cord.nvim",
    event = "VeryLazy",
    config = function()
        require('cord').setup({
            display = {
                theme = "classic",
                flavor = "accent",
                view = "full",
                swap_fields = true,
            },
            timestamp = { enabled = true },
            idle = {
                enabled = true,
                timeout = 60000,
                show_status = true,
                ignore_focus = true,
                unidle_on_focus = true,
                smart_idle = true,
                details = "Idling",
                tooltip = "💤",
            },
        })
    end
}
