local map = vim.keymap.set
local opts = { noremap = true, silent = true }

-- =============================
-- WINDOW / SPLITS / BUFFERS
-- =============================

-- Create splits
map("n", "<leader>v", ":vsplit<CR>", opts)             -- vertical split
map("n", "<leader>h", ":split<CR>", opts)              -- horizontal split
map("n", "<leader>q", ":close<CR>", { silent = true }) -- close split

-- Navigate splits
map("n", "<C-h>", "<C-w>h", opts)
map("n", "<C-j>", "<C-w>j", opts)
map("n", "<C-k>", "<C-w>k", opts)
map("n", "<C-l>", "<C-w>l", opts)

-- Resize splits
map("n", "<M-Up>", ":resize +2<CR>", opts)
map("n", "<M-Down>", ":resize -2<CR>", opts)
map("n", "<M-Left>", ":vertical resize +4<CR>", opts)
map("n", "<M-Right>", ":vertical resize -4<CR>", opts)

-- Navigate buffers
vim.keymap.set("n", "<Tab>", ":bnext<CR>")
vim.keymap.set("n", "<S-Tab>", ":bprevious<CR>")
vim.keymap.set("n", "<C-q>", function()
    local bufs = vim.tbl_filter(function(buf)
        return vim.api.nvim_buf_is_loaded(buf) and vim.bo[buf].buflisted
    end, vim.api.nvim_list_bufs())

    if #bufs <= 1 then
        vim.cmd("qa")
        return
    end

    if vim.bo.buftype == "terminal" then
        vim.cmd("bd!")
    else
        vim.cmd("bd")
    end
end, { silent = true })

-- =============================
-- TERMINAL
-- =============================

-- Exit terminal mode
map("t", "<Esc>", [[<C-\><C-n>]], opts)

-- =============================
-- FILE ACTIONS
-- =============================

-- Save / Quit
map("n", "<C-s>", ":w<CR>", opts)

-- =============================
-- Telescope
-- =============================

-- Keymaps
vim.keymap.set('n', '<leader>f', '<cmd>Telescope find_files<CR>', { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>g', '<cmd>Telescope live_grep<CR>', { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>b', '<cmd>Telescope buffers<CR>', { desc = 'Telescope buffers' })

-- =============================
-- LSP
-- =============================

-- Core LSP actions
map("n", "<C-n>", vim.lsp.buf.rename, opts)
map("n", "<C-a>", vim.lsp.buf.code_action, opts)
map("n", "<C-f>", function()
    vim.lsp.buf.format({ async = true })
end, opts)

-- Diagnostics
map("n", "<M-k>", function()
    vim.diagnostic.jump({ count = -1 })
end, opts)

map("n", "<M-j>", function()
    vim.diagnostic.jump({ count = 1 })
end, opts)

map("n", "<leader>dl", vim.diagnostic.setloclist, opts)

-- Navigation / Documentation
map("n", "gd", vim.lsp.buf.definition, opts)
map("n", "gi", vim.lsp.buf.implementation, opts)
map("n", "gr", vim.lsp.buf.references, opts)

-- =============================
-- EDITING
-- =============================

vim.keymap.set({"n", "v"}, "d", '"_d')

-- Better search navigation
map("n", "n", "nzzzv", opts)
map("n", "N", "Nzzzv", opts)

-- Visual mode: indent
map("v", "<C-h>", "<gv", opts)
map("v", "<C-l>", ">gv", opts)

-- Visual mode: move lines
map("v", "<C-j>", ":m '>+1<CR>gv=gv", opts)
map("v", "<C-k>", ":m '<-2<CR>gv=gv", opts)

