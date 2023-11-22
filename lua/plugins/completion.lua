local M = {}

function test(config)
    local current_line = vim.fn.getline('.')
    local cursor = vim.api.nvim_win_get_cursor(0)
    local text_width = #current_line
    local width = math.min(text_width, config.window.max_width)

    local opts = {
        relative = "editor",
        width = width,
        height = 1,
        row = cursor[1] + 1,
        col = cursor[2],
        style = "minimal",
        border = config.window.border,
    }

    local buf = vim.api.nvim_create_buf(false, true)
    vim.api.nvim_buf_set_lines(buf, 0, -1, false, {current_line})

    local win = vim.api.nvim_open_win(buf, false, opts)
end

local function merge_config(default, user)
    local result = vim.deepcopy(default)

    for key, value in pairs(user) do
        if type(value) == "table" and type(result[key]) == "table" then
            result[key] = merge_config(result[key], value)
        else
            result[key] = value
        end
    end

    return result
end

M.defaultConfig = {
    window = {
        border = "rounded",
        max_width = 80,
    },
}

function M.setup(userConfig)
    local config = merge_config(M.defaultConfig, userConfig or {})
    vim.keymap.set("n", "<leader>t", function() test(config) end, { noremap = true, silent = true })
end

return M
