return {
    {
        "neovim/nvim-lspconfig",
        dependencies = {
            "hrsh7th/cmp-nvim-lsp",
            "hrsh7th/cmp-buffer",
        },
        config = function()
            local capabilities =
                require("cmp_nvim_lsp").default_capabilities()

            -- HTML
            vim.lsp.config("html", {
                capabilities = capabilities,
            })

            -- CSS
            vim.lsp.config("cssls", {
                capabilities = capabilities,
            })

            -- JavaScript / TypeScript
            vim.lsp.config("ts_ls", {
                capabilities = capabilities,
            })

            -- Lua
            vim.lsp.config("lua_ls", {
                capabilities = capabilities,
                settings = {
                    Lua = {
                        diagnostics = {
                            globals = { "vim" },
                        },
                    },
                },
            })

            -- Python
            vim.lsp.config("pyright", {
                capabilities = capabilities,
            })

            -- Rust
            vim.lsp.config("rust_analyzer", {
                capabilities = capabilities,
            })

            -- C / C++
            vim.lsp.config("clangd", {
                capabilities = capabilities,
            })

            -- nix
            vim.lsp.config("nil_ls", {
                capabilities = capabilities,
            })


            vim.lsp.enable({
                "html",
                "cssls",
                "ts_ls",
                "lua_ls",
                "pyright",
                "rust_analyzer",
                "clangd",
                "nil_ls",
            })
        end,
    },

    -- =========================================================
    -- AUTOCOMPLETE
    -- =========================================================
    {
        "hrsh7th/nvim-cmp",
        event = "InsertEnter",
        dependencies = {
            "hrsh7th/cmp-nvim-lsp",
            "L3MON4D3/LuaSnip",
            "rafamadriz/friendly-snippets",
        },
        config = function()
            local cmp = require("cmp")
            local luasnip = require("luasnip")

            require("luasnip.loaders.from_vscode").lazy_load()
            luasnip.config.setup({})

            cmp.setup({
                snippet = {
                    expand = function(args)
                        luasnip.lsp_expand(args.body)
                    end,
                },
                formatting = {
                    fields = { "abbr" },
                    format = function(_, item)
                        item.kind = ""
                        item.menu = ""
                        return item
                    end,
                },


                window = {
                    completion = cmp.config.window.bordered({
                        max_width = 20,
                        max_height = 8,
                    }),
                    documentation = false,
                },

                mapping = cmp.mapping.preset.insert({
                    ["<CR>"] = cmp.mapping.confirm({ select = true }),
                    ["<Tab>"] = cmp.mapping.confirm({ select = true }),
                    ["<S-Tab>"] = cmp.mapping.select_prev_item(),
                }),

                sources = {
                    { name = "luasnip",  priority = 1000 },
                    { name = "buffer",   priority = 500 },
                    { name = "nvim_lsp", priority = 500 },
                },
            })
        end,
    },

    -- =========================================================
    -- HTML TAG AUTO CLOSE
    -- =========================================================
    {
        "windwp/nvim-ts-autotag",
        event = "InsertEnter",
        config = true,
    },

    -- =========================================================
    -- EMMET (he -> <head>)
    -- =========================================================
    {
        "mattn/emmet-vim",
        ft = {
            "html",
            "css",
            "javascriptreact",
            "typescriptreact",
        },
    },
}
