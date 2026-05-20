return {
    {
        "folke/snacks.nvim",
        priority = 1000,
        lazy = false,

        opts = {
            dashboard = {
                enabled = true,
                width = 70,
                pane_gap = 4,
                preset = {
                    header = [[
  ██        ██     ███        ███   ███    ███       ███
 ███        ███     ████      ███   ███   ███        ███
███    ███    ███      ██████████   ███  ███         ███
      █████          ████████████   ███     ████████████
     ███████        ████      ███   ███    ████      ███
     ███████       ███        ███   ███    ███       ███
    ███   ███      ███        ███   ███    ███       ███
   ███     ████    ███        ███   ███     ████████████
   ███     ████    ███        ███   ███       ██████████
  ██████████████   ███        ███   ███      ███     ███
]],
                    keys = {
                        {
                            icon = " ",
                            key = "1",
                            desc = "Find File",
                            action = ":Telescope find_files",
                        },

                        {
                            icon = " ",
                            key = "2",
                            desc = "New File",
                            action = ":ene | startinsert",
                        },

                        {
                            icon = " ",
                            key = "3",
                            desc = "Recent Files",
                            action = ":Telescope oldfiles",
                        },

                        {
                            icon = " ",
                            key = "4",
                            desc = "Recent Projects",
                            action = function()
                                Snacks.picker.projects()
                            end,
                        },

                        {
                            icon = "󰱽 ",
                            key = "5",
                            desc = "Find Text",
                            action = ":Telescope live_grep",
                        },

                        {
                            icon = " ",
                            key = "6",
                            desc = "LazyGit",
                            action = ":LazyGit",
                        },

                        {
                            icon = "󰒲 ",
                            key = "7",
                            desc = "Lazy",
                            action = ":Lazy",
                        },

                        {
                            icon = " ",
                            key = "8",
                            desc = "Keymaps",
                            action = ":Telescope keymaps",
                        },

                        {
                            icon = "󰈆 ",
                            key = "q",
                            desc = "Quit",
                            action = ":qa",
                        },
                    },
                },
            },
        },
    },
}
