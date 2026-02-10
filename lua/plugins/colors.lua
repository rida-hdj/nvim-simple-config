return {
  -- =============================
  -- TOKYONIGHT
  -- =============================
  {
    "folke/tokyonight.nvim",

    lazy = false,
    priority = 1000,

    config = function()
      require("tokyonight").setup({
        transparent = true,
        styles = {
          sidebars = "transparent",
          floats = "transparent",
        },
      })

      vim.cmd.colorscheme("tokyonight-storm")

      local groups = {
        "Normal",
        "NormalFloat",
        "SignColumn",
      }

      for _, g in ipairs(groups) do
        vim.api.nvim_set_hl(0, g, { bg = "none" })
      end
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
          lualine_x = { "diagnostics", "encoding", "filetype" },
          lualine_y = { "progress" },
          lualine_z = { "location" },
        },
      })

      -- Make lualine transparent
      vim.api.nvim_set_hl(0, "StatusLine", { bg = "none" })
      vim.api.nvim_set_hl(0, "StatusLineNC", { bg = "none" })
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

