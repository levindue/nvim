local M = {}

local function map(mode, lhs, rhs)
    vim.keymap.set(mode, lhs, rhs, { noremap = true, silent = true })
end

function M.setup()
    vim.g.mapleader = " "

    -- file browser
    map("n", "-", vim.cmd.Ex)
    map("n", "<leader>f", ":FZF<CR>")

    -- copy and paste
    map({"n", "x"}, "<leader>y", "\"+y")
    map({"n", "x"}, "<leader>p", "\"+p")

    -- window movement
    map("n", "<C-h>", "<C-w>h")
    map("n", "<C-j>", "<C-w>j")
    map("n", "<C-k>", "<C-w>k")
    map("n", "<C-l>", "<C-w>l")

    map("t", "<C-h>", "<cmd>wincmd h<CR>")
    map("t", "<C-j>", "<cmd>wincmd j<CR>")
    map("t", "<C-k>", "<cmd>wincmd k<CR>")
    map("t", "<C-l>", "<cmd>wincmd l<CR>")

    -- marks
    map("n", "M", "`")
end

return M
