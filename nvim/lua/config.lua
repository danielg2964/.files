local o = vim.o

vim.opt.number = true
vim.opt.relativenumber = true

o.expandtab = true
o.smartindent = true
o.tabstop = 2
o.shiftwidth = 2

o.termguicolors = true

vim.api.nvim_create_autocmd('FileType', {
  pattern = 'netrw',
  callback = function()
    vim.opt_local.number = true
    vim.opt_local.relativenumber = true 
  end,
})

vim.g.netrw_liststyle = 1
vim.g.netrw_sort_by = 'extension'
