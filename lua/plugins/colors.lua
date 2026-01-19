return {
  -- =============================
  -- TOKYONIGHT
  -- =============================
  {
    "folke/tokyonight.nvim",
    priority = 1000,
    lazy = false,
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
        "EndOfBuffer",
        "NeoTreeNormal",
        "NeoTreeNormalNC",
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
    dependencies = { "nvim-tree/nvim-web-devicons" },
    event = "VeryLazy",
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
}
