return {
    'nvim-treesitter/nvim-treesitter',
    build = ":TSUpdate",
    config = function()
        local ok, ts_configs = pcall(require, "nvim-treesitter.configs")
        if not ok then
            vim.notify("nvim-treesitter not installed yet!", vim.log.levels.WARN)
            return
        end

        ts_configs.setup({
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
        })
    end
}
