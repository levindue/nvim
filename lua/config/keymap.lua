local function map(mode, lhs, rhs)
    vim.keymap.set(mode, lhs, rhs, { noremap = true, silent = true })
end

vim.g.mapleader = " "
vim.g.maplocalleader = ","

-- file browser
map("n", "-", vim.cmd.Ex)
map("n", "<leader>f", ":Pick files<CR>") 

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

-- math
map("n", "<leader>e", require("modules.math").eval_selection)

-- lsp
map("n", "<localleader>r", vim.lsp.buf.rename)
map("n", "<localleader>d", vim.lsp.buf.definition)
map("n", "<localleader>f", vim.lsp.buf.format)
map("n", "K", vim.lsp.buf.hover)

map("n", "<leader>r", ":w <CR>:so %<CR>")
