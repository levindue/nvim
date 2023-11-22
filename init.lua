-- config
require("config.settings").setup()
require("config.keymap").setup()

-- plugins
require("plugins.completion").setup({
    window = {
        max_width = 10,
    },
})
require("plugins.statusline").setup()
require("plugins.math").setup()

-- lsp
require("lsp.servers.rust-analyzer").setup()
