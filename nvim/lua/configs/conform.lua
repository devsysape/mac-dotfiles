local options = {
  formatters_by_ft = {
    lua = { "stylua" },
    elixir = {"prettier"},
    css = { "prettier" },
    html = { "htmlbeautifier" },
    bash = { "beautysh" },
    yaml = { "yamlfix" },
    proto = { "buf" },
    markdown = { { "prettierd", "prettier"} },
  },

  -- format_on_save = {
  --   -- These options will be passed to conform.format()
  --   timeout_ms = 500,
  --   lsp_fallback = true,
  -- },
}

require("conform").setup(options)
