require("utils")

require("lspconfig").rust_analyzer.setup({})
require("lspconfig").tsserver.setup({})
require("lspconfig").luau_lsp.setup({})

local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())

local on_attach = function(client, bufnr)
  vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')

  keymapb('n', 'gD', vim.lsp.buf.declaration, bufnr)
  keymapb('n', 'gd', vim.lsp.buf.definition, bufnr)
  keymapb('n', 'K', vim.lsp.buf.hover, bufnr)
  keymapb('n', 'gi', vim.lsp.buf.implementation, bufnr)
  -- keymapb('n', '<C-k>', vim.lsp.buf.signature_help, bufnr)
  keymapb('n', '<leader>ld', vim.lsp.buf.type_definition, bufnr)
  keymapb('n', '<leader>ln', vim.lsp.buf.rename, bufnr)
  keymapb('n', '<leader>la', vim.lsp.buf.code_action, bufnr)
  keymapb('n', 'gr', vim.lsp.buf.references, bufnr)
  keymapb('n', '<leader>lf', vim.lsp.buf.formatting, bufnr)
end

local lsp_flags = {
  debounce_text_changes = 150,
}

require('lspconfig')['tsserver'].setup{
    on_attach = on_attach,
    flags = lsp_flags,
		capabilities = capabilities,
}

require('lspconfig')['luau_lsp'].setup{
    on_attach = on_attach,
    flags = lsp_flags,
}

require('lspconfig')['rust_analyzer'].setup{
    on_attach = on_attach,
    flags = lsp_flags,
    settings = {
      ["rust-analyzer"] = {}
    }
}
