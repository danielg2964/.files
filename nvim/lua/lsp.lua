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

vim.pack.add{{
    src = 'https://github.com/mfussenegger/nvim-jdtls.git',
    name = 'nvim-jdtls' 
}}

vim.pack.add{{
    src = 'https://github.com/ionide/Ionide-vim',
    name = 'ionide-vim' 
}}

vim.lsp.config('rust_analyzer', {
  settings = {
    ['rust-analyzer'] = {
      diagnostics = {
        enable = true;
      }
    }
  }
})

vim.lsp.enable('vtsls')

local dotnet = require("easy-dotnet")
dotnet.setup()

vim.lsp.enable('gopls')

vim.lsp.enable('zls')

vim.lsp.enable('jdtls')

vim.lsp.enable('rust_analyzer')
