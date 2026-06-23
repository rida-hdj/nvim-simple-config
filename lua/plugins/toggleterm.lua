return{
  "akinsho/toggleterm.nvim",
  opts = {
    direction = "horizontal",
    size = 10,
    start_in_insert = true,
    persist_mode = true,
    close_on_exit = true,
  },
  config = function(_, opts)
    require("toggleterm").setup(opts)

    local map = vim.keymap.set

    map("n", "<C-t>", "<cmd>ToggleTerm<cr>", { silent = true })

    map("t", "<Esc>", [[<C-\><C-n>]], { silent = true })

    map("n", "<leader>q", function()
      local buf = vim.api.nvim_get_current_buf()
      local buftype = vim.bo[buf].buftype

      if buftype == "terminal" then
        vim.cmd("bd!")
        return
      end

      local bufs = vim.tbl_filter(function(b)
        return vim.api.nvim_buf_is_loaded(b) and vim.bo[b].buflisted
      end, vim.api.nvim_list_bufs())

      if #bufs <= 1 then
        vim.cmd("qa")
      else
        vim.cmd("bd")
      end
    end, { silent = true })
  end,
}
