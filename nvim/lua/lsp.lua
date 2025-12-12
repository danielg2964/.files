vim.pack.add{
  { src = 'https://github.com/neovim/nvim-lspconfig',
    name = 'nvim-lspconfig' },
}

-- vtsls
vim.lsp.enable('vtsls')

-- roslyn
vim.lsp.enable('roslyn_ls')
