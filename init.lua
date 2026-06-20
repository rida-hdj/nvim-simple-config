vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.opt.fillchars = { eob = " " }
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.opt.expandtab = true
vim.opt.number = true
vim.opt.cursorline = true
vim.opt.splitright = true
vim.opt.splitbelow = true
vim.opt.clipboard = "unnamedplus"
vim.keymap.set({"n", "v"}, "d", '"_d')
vim.o.wrap = true
vim.o.breakindent = true
vim.opt.updatetime = 250
vim.opt.timeoutlen = 300

vim.api.nvim_create_autocmd("BufEnter", {
  callback = function()
    vim.opt_local.formatoptions:remove({ "o", "r", "c" })
  end,
})

require("config.lazy")

require("config.keymaps")

vim.diagnostic.config({
  virtual_text = true,
  signs = true,
  underline = true,
  update_in_insert = true,
})
