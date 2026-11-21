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
