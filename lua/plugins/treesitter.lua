return {
    'nvim-treesitter/nvim-treesitter',
    build = ":TSUpdate",
    event = { "BufReadPost", "BufNewFile" },
    opts = {
        highlight = { enable = true },
        indent = { enable = true },
        ensure_installed = {
            "c", "cpp", "rust", "asm",
            "bash", "ini", "toml", "json",
            "nix",
            "html", "css", "javascript", "typescript",
            "yaml", "markdown", "markdown_inline",
            "lua", "vim", "query"
        },
        auto_install = false,
    },
}
