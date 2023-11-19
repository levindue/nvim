-- config
require("config.settings").setup()
require("config.keymap").setup()

-- plugins
require("plugins.statusline").setup()

-- lsp
require("lsp.servers.rust-analyzer").setup()
