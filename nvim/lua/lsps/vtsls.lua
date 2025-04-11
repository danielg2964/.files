vim.lsp.config['vtsls'] =  {
  cmd = { 'vtsls', '--stdio' },
  filetypes = {
    'javascript',
    'javascriptreact',
    'javascript.jsx',
    'typescript',
    'typescriptreact',
    'typescript.tsx',
  },
    root_markers = { 'tsconfig.json', 'jsconfig.json', 'package.json', '.git' },
    single_file_support = true,
    settings = {
      typescript = {
        updateImportsOnFileMove = 'always'
      },
      javascript = {
        updateImportsOnFileMove = 'always'
      },
      vtsls = {
        enableMoveToFileCodeAction = true
      }
    }
}

vim.lsp.enable 'vtsls'

