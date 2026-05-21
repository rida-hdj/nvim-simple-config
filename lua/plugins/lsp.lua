return {
    -- =========================================================
    -- LSP
    -- =========================================================
    {
        "j-hui/fidget.nvim",
        opts = {
            progress = {
                suppress_on_insert = true,
                display = {
                    render_limit = 4,
                    done_icon = "✔",
                    progress_icon = { "dots" },
                },
            },
            notification = {
                window = {
                    winblend = 0,
                },
            },
        },
    },
    {
        "neovim/nvim-lspconfig",
        event = { "BufReadPre", "BufNewFile" },

        dependencies = {
            "hrsh7th/cmp-nvim-lsp",
            "hrsh7th/cmp-path",
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

            -- Nix
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
            "hrsh7th/cmp-buffer",
            "L3MON4D3/LuaSnip",
            "rafamadriz/friendly-snippets",
            "saadparwaiz1/cmp_luasnip",
        },

        config = function()
            local cmp = require("cmp")
            local luasnip = require("luasnip")

            require("luasnip.loaders.from_vscode").lazy_load()
            luasnip.config.setup({})

            vim.api.nvim_set_hl(0, "CmpNormal", { bg = "#32364e" })

            cmp.setup({
                mapping = cmp.mapping.preset.insert({
                    ["<Tab>"] = cmp.mapping(function(fallback)
                        if cmp.visible() then
                            cmp.confirm({ select = true })
                            cmp.complete()
                        else
                            fallback()
                        end
                    end, { "i", "s" }),

                    ["<S-Tab>"] = cmp.mapping.select_next_item(),

                    ["<Down>"] = cmp.mapping(function(fallback)
                        fallback()
                    end, { "i", "s" }),

                    ["<Up>"] = cmp.mapping(function(fallback)
                        fallback()
                    end, { "i", "s" }),

                    ["<C-j>"] = cmp.mapping(function(fallback)
                        fallback()
                    end, { "i", "s" }),

                    ["<C-k>"] = cmp.mapping(function(fallback)
                        fallback()
                    end, { "i", "s" }),
                }),

                snippet = {
                    expand = function(args)
                        --                        luasnip.lsp_expand(args.body)
                        require("luasnip").lsp_expand(args.body)
                        require("luasnip.loaders.from_vscode").lazy_load()
                    end,
                },
                formatting = {
                    fields = { "kind", "abbr", },

                    format = function(_, item)
                        local icons = {
                            Text          = "󰉿",
                            Method        = "󰆧",
                            Function      = "󰊕",
                            Constructor   = "",

                            Field         = "󰜢",
                            Variable      = "󰀫",
                            Property      = "󰖷",

                            Class         = "󰠱",
                            Interface     = "",
                            Struct        = "󰙅",
                            Module        = "󰆧",

                            Unit          = "󰑭",
                            Value         = "󰎠",
                            Enum          = "󰦨",
                            EnumMember    = "󰦨",

                            Keyword       = "󰌋",
                            Constant      = "󰏿",

                            Snippet       = "",

                            Color         = "󰏘",
                            File          = "󰈙",
                            Reference     = "󰈇",
                            Folder        = "󰉋",

                            Event         = "",
                            Operator      = "󰆕",
                            TypeParameter = "󰊄",
                        }
                        item.kind = (icons[item.kind] or "") .. " "
                        return item
                    end,
                },

                window = {
                    completion = cmp.config.window.bordered({
                        max_width = 20,
                        max_height = 8,
                        winhighlight = "Normal:CmpNormal,FloatBorder:CmpBorder,CursorLine:PmenuSel,Search:None",
                    }),
                    documentation = cmp.config.window.bordered({
                        max_height = 15,
                        winhighlight = "Normal:CmpNormal,FloatBorder:CmpBorder,CursorLine:PmenuSel,Search:None",
                    }),
                },

                view = {
                    entries = {
                        name = "custom",
                        selection_order = "near_cursor",
                    },
                },

                sources = {
                    { name = "nvim_lsp", priority = 500 },
                    { name = "luasnip",  priority = 1000 },
                    {
                        name = "path",
                        priority = 750,
                        option = {
                            trailing_slash = true,
                            label_trailing_slash = true,
                        },
                    },
                    { name = "buffer", priority = 250 },
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

        dependencies = {
            "nvim-treesitter/nvim-treesitter",
        },

        config = true,
    },
}
