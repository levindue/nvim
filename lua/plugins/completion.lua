local M = {}

local va = vim.api
local autocmd = va.nvim_create_autocmd

local function calculate_width(lines, max_width_config)
    local max_width = 0
    for _, line in ipairs(lines) do
        max_width = math.max(max_width, #line)
    end
    return math.min(max_width, max_width_config)
end

local function calculate_height(lines, max_height_config)
    return math.min(#lines, max_height_config, vim.o.lines - 1)
end

function test(config)
    local lines = {
        vim.fn.getline('.'),
    }

    local cursor = va.nvim_win_get_cursor(0)
    local width = calculate_width(lines, config.window.max_width)
    local height = calculate_height(lines, config.window.max_height)

    local opts = {
        relative = "editor",
        width = width,
        height = height,
        row = cursor[1],
        col = cursor[2] + 8,
        style = "minimal",
        border = config.window.border,
    }

    local buf = va.nvim_create_buf(false, true)
    va.nvim_buf_set_lines(buf, 0, -1, false, lines)

    local win = va.nvim_open_win(buf, false, opts)
    local win_id = win

    autocmd("CursorMoved", {
        pattern = "",
        callback = function()
            if va.nvim_win_is_valid(win_id) then
                va.nvim_win_close(win_id, true)
                test(config)
            end
        end
    })
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
    keybind = "<leader>t",
    window = {
        border = "rounded",
        max_width = 80,
        max_height = 10,
    },
}

function M.setup(userConfig)
    local config = merge_config(M.defaultConfig, userConfig or {})
    vim.keymap.set("n", config.keybind, function() test(config) end, { noremap = true, silent = true })
end

return M
