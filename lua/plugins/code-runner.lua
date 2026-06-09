return {
    {
        "CRAG666/code_runner.nvim",
        cmd = { "RunCode", "RunFile", "RunProject", "RunClose" },
        keys = {
            { "<leader>r", "<cmd>RunCode<cr>", desc = "Run current file" }
        },
        config = function()
            local filetype_commands = {
                html = "xdg-open $fileName",
                ts_ls = "ts-node $fileName",
                pyright = "python3 -u $fileName",
                rust_analyzer = "cargo run",
                clangd = "g++ $fileName -o $fileNameWithoutExt && ./$fileNameWithoutExt",
            }

            require("code_runner").setup({
                filetype = filetype_commands,
                mode = "term",
                focus = true,
                startinsert = true,
                on_run = function(ft)
                    if not filetype_commands[ft] then
                        return false
                    end
                    return true
                end
            })
        end
    },
    {
        "https://forge.barrettruth.com/barrettruth/live-server.nvim.git",
        cmd = { "LiveServerStart", "LiveServerStop", "LiveServerToggle" },
        config = function()
            vim.g.live_server = {
                port = 8080,
                host = "127.0.0.1",
            }
        end,
    }
}
