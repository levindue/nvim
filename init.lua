-- config
require("config.settings")
require("config.keymap")

-- mini
require("mini.pick").setup()

-- plugins
require("modules.statusline").setup()

-- require("plugins.math").setup()
-- require("plugins.test").setup()

-- lsp
require("lsp.servers.rust-analyzer").setup()
