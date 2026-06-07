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
map("n", "<C-s>", ":w<CR>", opts)

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

-- markdown
local toggle = require("markdown-toggle")
local opts = { silent = true, noremap = true }
vim.g.mapleader = " "
vim.g.maplocalleader = " "
-- checkboxes
vim.keymap.set({ "n", "x" }, "<leader>tc", toggle.checkbox, opts)
-- lists
vim.keymap.set({ "n", "x" }, "<leader>tl", toggle.list, opts)
-- ordered list
vim.keymap.set({ "n", "x" }, "<leader>to", toggle.olist, opts)
-- headings
vim.keymap.set({ "n", "x" }, "<leader>th", toggle.heading, opts)
-- quote block
vim.keymap.set({ "n", "x" }, "<leader>tq", toggle.quote, opts)
vim.keymap.set("n", "gf",
    function()
        local line = vim.api.nvim_get_current_line()
        local col = vim.fn.col(".")
        local text, url
        for t, u in line:gmatch("%[([^%]]+)%]%((https?://[^%)]+)%)") do
            local start_pos, end_pos = line:find("%[" .. vim.pesc(t) .. "%]%(" .. vim.pesc(u) .. "%)")
            if start_pos and end_pos and col >= start_pos and col <= end_pos then
                text, url = t, u
                break
            end
        end
        if url then
            vim.fn.jobstart({ "xdg-open", url }, { detach = true })
            return
        end
        local file = vim.fn.expand("<cfile>")
        if file:match("^https?://") then
            vim.fn.jobstart({ "xdg-open", file }, { detach = true })
            return
        end
        if vim.fn.findfile(file, ".") ~= "" then
            vim.cmd("edit " .. file)
            return
        end
        print("no link or file found")
    end, { silent = true })

return true
