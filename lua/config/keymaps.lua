-- keymaps.lua
-- Basic and friendly Neovim keymaps

local map = vim.keymap.set
local opts = { noremap = true, silent = true }

-- =============================
-- SPLITS
-- =============================
-- Split windows
map("n", "<leader>sv", ":vsplit<CR>", opts) -- vertical split
map("n", "<leader>sh", ":split<CR>", opts)  -- horizontal split

-- Navigate splits
map("n", "<C-h>", "<C-w>h", opts)
map("n", "<C-l>", "<C-w>l", opts)
map("n", "<C-j>", "<C-w>j", opts)
map("n", "<C-k>", "<C-w>k", opts)

-- Resize splits
map("n", "<C-Up>", ":resize +2<CR>", opts)
map("n", "<C-Down>", ":resize -2<CR>", opts)
map("n", "<C-Left>", ":vertical resize +4<CR>", opts)
map("n", "<C-Right>", ":vertical resize -4<CR>", opts)

-- Close split
map("n", "<leader>sc", ":close<CR>", opts)

-- =============================
-- TERMINAL
-- =============================
-- Open terminal splits
map("n", "<leader>tt", function()
    local height = math.floor(vim.o.lines * 0.25)
    vim.cmd(height .. "split")
    vim.cmd("terminal")
end, opts)
map("n", "<leader>tv", ":vsplit | terminal<CR>", opts)

-- Better terminal mode exit
map("t", "<Esc>", [[<C-\><C-n>]], opts)

-- =============================
-- LSP
-- =============================
map("n", "<leader>rn", vim.lsp.buf.rename, opts)
map("n", "<leader>ca", vim.lsp.buf.code_action, opts)
map("n", "<leader>ff", function() vim.lsp.buf.format({ async = true }) end, opts)

-- Diagnostics
map("n", "[g", vim.diagnostic.goto_prev, opts)
map("n", "]g", vim.diagnostic.goto_next, opts)
map("n", "<leader>e", vim.diagnostic.open_float, opts)
-- =============================
-- BASIC EDITING
-- =============================
map("n", "<leader>w", ":w<CR>", opts) -- save
map("n", "<leader>q", ":q<CR>", opts) -- quit
map("n", "<leader>x", ":x<CR>", opts) -- save & quit

-- Better indenting
map("v", "h", "<gv", opts)
map("v", "l", ">gv", opts)

-- Move selected lines
map("v", "J", ":m '>+1<CR>gv=gv", opts)
map("v", "K", ":m '<-2<CR>gv=gv", opts)

-- Keep search centered
map("n", "n", "nzzzv", opts)
map("n", "N", "Nzzzv", opts)

return true
