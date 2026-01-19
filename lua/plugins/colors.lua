return {
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
}
