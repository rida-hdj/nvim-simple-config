vim.o.updatetime = 500

vim.diagnostic.config({
    virtual_text = false,
    signs = true,
    underline = true,
    float = {
        border = "rounded",
        source = "if_many",
        header = "",
        prefix = "",
        focusable = true,
    },
})

vim.api.nvim_create_autocmd("CursorHold", {
    callback = function()
        vim.diagnostic.open_float(nil, {
            focus = false,
            scope = "cursor",
        })
    end,
})
