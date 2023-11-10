local M = {}

function M.setup()
    local options = {
        guicursor = "",
        tabstop = 4,
        expandtab = true,
        softtabstop = 4,
        shiftwidth = 4,
        number = true,
        relativenumber = false,
        laststatus = 3,
        showmode = false,
        splitbelow = true,
        splitright = true,
        hlsearch = false,
        ignorecase = true,
        autoindent = false,
        wrap = false,
        syntax = "on",
        termguicolors = false, -- default colorscheme looks shit otherwise
    }

    for k, v in pairs(options) do
        vim.opt[k] = v
    end

    -- turning off default plugins
    local plugins = {
        loaded_tutor_plugin = 1,

        loaded_gzip = 1,
        loaded_zip = 1,
        loaded_zipPlugin = 1,
        loaded_tar = 1,
        loaded_tarPlugin = 1,

        loaded_getscript = 1,
        loaded_getscriptPlugin = 1,
        loaded_vimball = 1,
        loaded_vimballPlugin = 1,
        loaded_2html_plugin = 1,

        loaded_matchit = 1,
        loaded_matchparen = 1,
        loaded_logiPat = 1,
        loaded_rrhelper = 1,

        -- loaded_netrw = 1,
        -- loaded_netrwPlugin = 1,
        netrw_banner = 0,
        loaded_netrwSettings = 1,
        -- loaded_netrwFileHandlers = 1,
    }


    for k, v in pairs(plugins) do
        vim.g[k] = v
    end

    vim.opt.shortmess:append({ I = true })
end

return M
