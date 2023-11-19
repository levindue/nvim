local M = {}

function M.setup()
    local autocmd = vim.api.nvim_create_autocmd
    autocmd("FileType", {
        pattern = "rust",
        callback = function()
            local root_dir = vim.fs.dirname(
                vim.fs.find({ 'Cargo.toml', '.git' }, { upward = true })[1]
            )
            local client = vim.lsp.start({
                name = 'rust-analyzer',
                cmd = { 'rust-analyzer' },
                root_dir = root_dir,
            })
            vim.lsp.buf_attach_client(0, client)
        end
    })
end

return M
