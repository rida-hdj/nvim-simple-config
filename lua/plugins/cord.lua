return {
  "vyfor/cord.nvim",
  event = "VeryLazy",
  config = function()
    require("cord").setup({
      main_image = "neovim",
      neovim_image_text = "Editing in Neovim",
      editing_text = "Editing %s",
      file_explorer_text = "Browsing %s",
      git_commit_text = "Committing changes",
      buttons = {},
    })
  end
}
