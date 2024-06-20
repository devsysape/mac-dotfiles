-- EXAMPLE 
local on_attach = require("nvchad.configs.lspconfig").on_attach
local on_init = require("nvchad.configs.lspconfig").on_init
local capabilities = require("nvchad.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"
local servers = { "html", "cssls", "elixirls" }

-- lsps with default config
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    on_init = on_init,
    capabilities = capabilities,
  }
end

-- typescript
-- lspconfig.tsserver.setup {
--  on_attach = on_attach,
--  on_init = on_init,
--  capabilities = capabilities,
--}

lspconfig.elixirls.setup{
    -- Unix
    cmd = { "/Users/greg/bin/elixir-ls/language_server.sh" },
    filetypes = {"elixir", "eelixir", "heex", "surface"},
}

