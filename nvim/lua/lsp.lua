vim.lsp.enable('omnisharp')
vim.lsp.enable('vtsls')

local M = {}

vim.lsp.config('*', {
  capabilities = {
    textDocument = {
      semanticTokens = {
        multilineTokenSupport = true
      }
    }
  },
  root_markers = { '.git' },
})

vim.api.nvim_create_autocmd('LspAttach', {
  callback = function(ev)
    local client = vim.lsp.get_client_by_id(ev.data.client_id)
    if client:supports_method('textDocument/completion') then
      vim.lsp.completion.enable(true, client.id, ev.buf, { autotrigger = false })
    end
 end
})

local diagnostic_enable_config = { 
  virtual_text = false,
  virtual_lines = {
    only_curren_line =  false
  },
  float = { border = 'rounded' }
}

vim.o.updatetime = 250 
vim.diagnostic.config(diagnostic_enable_config)

local diagnostic_disabled_config = {
  virtual_text = false,
  virtual_lines = false,
  float = { border = 'rounded' }
}

local diagnostic_disabled = true

M.toggle_diagnostic = function()
  if diagnostic_disabled then 
    vim.diagnostic.config(diagnostic_disabled_config)
    diagnostic_disabled = false
  else
    vim.diagnostic.config(diagnostic_enable_config)
    diagnostic_disabled = true 
  end
end

return M
