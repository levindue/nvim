vim.api.nvim_exec([[
  augroup FileTypeTypst
    autocmd!
    autocmd BufRead,BufNewFile *.typ set filetype=typst
  augroup END
]], true)
