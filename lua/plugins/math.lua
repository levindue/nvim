-- Plugin to simplify writing and evaluating math in neovim
-- should support typst and math in plaintext
-- Typst TODO
-- plaintext is kinda working
-- results as virtual text
-- support for advanced math expressions TODO

local M = {}

function M.eval_selection()
    equation = vim.fn.getline('.')

    local result = vim.fn.eval(equation)

    local bufnr = vim.fn.bufnr('%')
    local line = vim.fn.line('.')
    local ns_id = vim.api.nvim_create_namespace('math_evaluator')  -- Create a namespace for virtual text

    vim.api.nvim_buf_set_virtual_text(bufnr, ns_id, line - 1, {{tostring("= " .. result), 'Number'}}, {})
end

function M.setup()
end

return M
