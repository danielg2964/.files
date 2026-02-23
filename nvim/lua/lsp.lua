vim.pack.add{{
    src = 'https://github.com/neovim/nvim-lspconfig',
    name = 'nvim-lspconfig' 
}}

vim.pack.add{{
    src = 'https://github.com/GustavEikaas/easy-dotnet.nvim',
    name = 'easy-dotnet' 
}}

vim.pack.add{{
    src = 'https://github.com/nvim-lua/plenary.nvim',
    name = 'plenary.nvim' 
}}

vim.lsp.enable('vtsls')

require('easy-dotnet').setup({
  auto_bootstrap_namespace = {
    --block_scoped, file_scoped
    type = "block_scoped",
    enabled = true,
  },
})

vim.lsp.enable('gopls')

vim.lsp.enable('zls')
