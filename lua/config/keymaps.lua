local map = vim.keymap.set
local opts = { noremap = true, silent = true }

-- =============================
-- WINDOW / SPLITS
-- =============================

-- Create splits
map("n", "<C-s>v", ":vsplit<CR>", opts) -- vertical split
map("n", "<C-s>h", ":split<CR>", opts)  -- horizontal split

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

-- Close split
map("n", "<C-s>c", ":close<CR>", opts)

-- =============================
-- TERMINAL
-- =============================

-- Open terminal (horizontal)
map("n", "<C-t>", function()
    local height = math.floor(vim.o.lines * 0.25)
    vim.cmd(height .. "split")
    vim.cmd("terminal")
end, opts)

-- Exit terminal mode
map("t", "<Esc>", [[<C-\><C-n>]], opts)

-- =============================
-- FILE ACTIONS
-- =============================

-- Save / Quit
map("n", "<C-w>", ":w<CR>", opts)
map("n", "<C-q>", ":q<CR>", opts)
map("n", "<C-S-q>", ":x<CR>", opts)
-- =============================
-- Telescope
-- =============================
local ok, telescope = pcall(require, 'telescope.builtin')
if not ok then
    return
end

-- Keymaps
vim.keymap.set('n', '<leader>f', telescope.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>g', telescope.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>b', telescope.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>h', telescope.help_tags, { desc = 'Telescope help tags' })

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
map("n", "[g", vim.diagnostic.goto_prev, opts)
map("n", "]g", vim.diagnostic.goto_next, opts)
map("n", "<C-e>", vim.diagnostic.open_float, opts)

-- =============================
-- EDITING
-- =============================

-- Better search navigation
map("n", "n", "nzzzv", opts)
map("n", "N", "Nzzzv", opts)

-- Visual mode: indent
map("v", "<C-h>", "<gv", opts)
map("v", "<C-l>", ">gv", opts)

-- Visual mode: move lines
map("v", "<C-j>", ":m '>+1<CR>gv=gv", opts)
map("v", "<C-k>", ":m '<-2<CR>gv=gv", opts)

return true
