local lsp_zero = require('lsp-zero')

lsp_zero.on_attach(function(client, bufnr)
  -- see :help lsp-zero-keybindings
  -- to learn the available actions
  lsp_zero.default_keymaps({buffer = bufnr})
end)

-- local capabilities = require('cmp_nvim_lsp').default_capabilities()

require('mason').setup({})
require('mason-lspconfig').setup({
    ensure_installed = {'lua_ls', 'tsserver', 'rust_analyzer', 'pyright', 'clangd'},
    handlers = {
        lsp_zero.default_setup,
    },
})

local lsp_servers = {'lua_ls', 'rust_analyzer', 'pyright', 'tsserver', 'clangd'}
lsp_zero.setup_servers(lsp_servers)

-- require("lspconfig").lua_ls.setup {
--     capabilities = capabilities
-- }
-- require("lspconfig").rust_analyzer.setup {
--     capabilities = capabilities
-- }
-- require("lspconfig").pyright.setup {
--     capabilities = capabilities,
--     cmd = { "pyright-langserver", "--stdio" },
--     filetypes = { "python" },
--     settings = {
--         python = {
--             analysis = {
--                 autoSearchPaths = true,
--                 diagnosticMode = "openFilesOnly",
--                 useLibraryCodeForTypes = true
--             }
--         }
--     },
--     single_file_support = true,
--
-- }
