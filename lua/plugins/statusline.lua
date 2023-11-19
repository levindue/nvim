local M = {}

local function filename()
  local fname = vim.fn.expand "%:t"
  if fname == "" then
      return "[No Name]"
  end
  return "[" .. fname .. "]"  .. " "
end

local function lineinfo()
  return " %l:%c "
end

local function loc()
    return table.concat {
        vim.api.nvim_buf_line_count(0),
        ":",
        vim.fn.wordcount().words,
    }
end

local function lemon()
    return "  "
end

function statusline()
    return table.concat {
        filename(),
        "%=",
        lineinfo(),
        loc(),
        lemon(),
    }
end

function M.setup()
    vim.cmd("hi! link StatusLine Normal")
    vim.o.statusline="%{%v:lua.statusline()%}"
end

return M
