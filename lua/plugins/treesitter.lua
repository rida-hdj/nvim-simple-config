return {
    'nvim-treesitter/nvim-treesitter',
    lazy = false,
    build = ":TSUpdate",
    config = function()
        require("nvim-treesitter.configs").setup({
            highlight = {
                enable = true,
            },
            indent = { enable = true },
            ensure_installed = {
                -- Low level
                "c", "cpp", "rust", "asm",

                -- System / Linux configs
                "bash", "ini", "toml", "json",

                -- NixOS language
                "nix",

                -- Web Dev
                "html", "css", "javascript", "typescript",
                "yaml", "markdown", "markdown_inline",

                -- Optional but useful
                "lua", "vim", "query"

            },
            auto_install = false,

        })
    end
}
