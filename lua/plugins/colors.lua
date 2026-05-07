return {
  -- =============================
  -- TOKYONIGHT
  -- =============================
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,

    config = function()
      require("tokyonight").setup({})

      vim.cmd.colorscheme("tokyonight-night")
    end,
  },

  -- =============================
  -- LUALINE
  -- =============================
  {
    "nvim-lualine/lualine.nvim",
    event = "VeryLazy",

    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },

    config = function()
      require("lualine").setup({
        options = {
          theme = "tokyonight",
          icons_enabled = true,
          section_separators = "",
          component_separators = "",
          globalstatus = true,
        },
        sections = {
          lualine_a = { "mode" },
          lualine_b = { "branch", "diff" },
          lualine_c = {
            { "filename", path = 1 },
          },
          lualine_x = { "diagnostics", "filetype" },
          lualine_y = { "searchcount" },
          lualine_z = { "lsp_status" },
        },
      })
    end,
  },

  -- =============================
  -- CSS COLORS HIGHLIGHT
  -- =============================
  {
    "brenoprata10/nvim-highlight-colors",
    event = { "BufReadPost", "BufNewFile" },

    config = function()
      require("nvim-highlight-colors").setup({})
    end,
  },
}
