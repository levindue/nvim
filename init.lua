-- config
require("config.settings")
require("config.keymap")

-- mini
require("mini.pick").setup()

-- plugins
require("plugins.completion").setup({
    window = {
        max_width = 25,
    },
})
require("plugins.statusline").setup()
require("plugins.math").setup()

-- lsp
require("lsp.servers.rust-analyzer").setup()
