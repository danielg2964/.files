local lsp = require 'lsp'

vim.keymap.set('', '<Space>', '<Nop>', { silent = true, noremap = true })

vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- vim.keymap.set('n', '<leader>e', function()
  -- local netrw_win = nil

  -- for _, win in ipairs(vim.api.nvim_list_wins()) do
    -- local buf = vim.api.nvim_win_get_buf(win)
    -- local ft = vim.api.nvim_buf_get_option(buf, 'filetype')
    -- if ft == 'netrw' then
      -- netrw_win = win
      -- break
    -- end
  -- end

  -- if netrw_win then
    -- if #vim.api.nvim_list_wins() > 1 then
    --   vim.api.nvim_win_close(netrw_win, true)
    -- else
    --   vim.notify('Cannot close the last window', vim.log.levels.WARN)
    -- end
 --  else
   --  vim.cmd('Ex')
  -- end
-- end, { desc = 'Toggle netrw' })

vim.keymap.set('n', '<leader>e', function()
  vim.cmd('Ex')
end, { desc = 'Open file explorer'})

vim.keymap.set('n', '<leader>d', lsp.toggle_diagnostic, { desc = 'Toggle diagnostic' })

vim.keymap.set('n', '<Esc>', function()
  vim.cmd("nohlsearch")
  vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes('<Esc>', true, false, true), 'n', false)
end, { desc = 'Clear search highlight with Esc' })

vim.keymap.set('n', '<leader>t', function()
  vim.cmd('vsplit | terminal')
end, { desc = 'Open terminal' })

vim.keymap.set('t', '<Esc>', '<C-\\><C-n>', { desc = 'Close terminal mode' })

vim.keymap.set('n', '<leader>x', ':bd!<CR>', { desc = 'Close terminal' })

vim.keymap.set('i', '<C-k>', vim.lsp.buf.signature_help, { noremap = true, silent = true})

