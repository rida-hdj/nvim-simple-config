return {
    "nvimdev/dashboard-nvim",
    lazy = false,
    opts = function()
        local opts = {
            theme = "doom",
            config = {
                vertical_center = true,
                header = {},
                center = {
                    { action = 'Telescope find_files', desc = " Find File", icon = " ", key = "1" },
                    { action = "ene | startinsert", desc = " New File", icon = " ", key = "2" },
                    { action = 'Telescope oldfiles', desc = " Recent Files", icon = " ", key = "3" },
                    { action = 'Telescope projects', desc = " Recent Projects", icon = " ", key = "4" },
                    { action = 'Telescope live_grep', desc = " Find Text", icon = "󰱽 ", key = "5" },
                    { action = 'LazyGit', desc = " LazyGit", icon = " ", key = "6" },
                    { action = "Lazy", desc = " Lazy", icon = "󰒲 ", key = "7" },
                    { action = 'Telescope keymaps', desc = " Keymaps", icon = " ", key = "8" },
                    { action = function() vim.api.nvim_input("<cmd>qa<cr>") end, desc = " Quit", icon = "󰈆 ", key = "q" },
                },
                footer = function()
                    local stats = require("lazy").stats()
                    local ms = (math.floor(stats.startuptime * 100 + 0.5) / 100)
                    return { "Neovim loaded " .. stats.loaded .. "/" .. stats.count .. " plugins in " .. ms .. "ms" }
                end,
            },
        }

        for _, button in ipairs(opts.config.center) do
            button.desc = button.desc .. string.rep(" ", 43 - #button.desc)
            button.key_format = "  %s"
        end

        if vim.o.filetype == "lazy" then
            vim.api.nvim_create_autocmd("WinClosed", {
                pattern = tostring(vim.api.nvim_get_current_win()),
                once = true,
                callback = function()
                    vim.schedule(function()
                        vim.api.nvim_exec_autocmds("UIEnter", { group = "dashboard" })
                    end)
                end,
            })
        end

        return opts
    end,
}
