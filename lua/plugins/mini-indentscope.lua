return {
    "nvim-mini/mini.indentscope",
    version = false,
    event = { "BufReadPost", "BufNewFile" },
    opts = function()
        local mini = require("mini.indentscope")
        return {
            symbol = "│",
            options = { try_as_border = true },
            draw = {
                animation = mini.gen_animation.none(),
            },
        }
    end,
}
