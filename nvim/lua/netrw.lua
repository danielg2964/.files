vim.g.netrw_liststyle = 1
vim.g.netrw_sort_by = 'extension'

vim.api.nvim_create_autocmd('FileType', {
  pattern = 'netrw',
  callback = function()
    vim.opt_local.number = true
    vim.opt_local.relativenumber = true 
  end,
})

