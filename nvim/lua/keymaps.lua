vim.keymap.set('', '<Space>', '<Nop>', { silent = true, noremap = true })

vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.keymap.set('n', '<leader>e', function()
  vim.cmd('Ex')
end, { desc = 'Open file explorer'})

vim.keymap.set('n', '<Esc>', function()
  vim.cmd("nohlsearch")
  vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes('<Esc>', true, false, true), 'n', false)
end, { desc = 'Clear search highlight with Esc' })
