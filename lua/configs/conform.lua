local options = {
  default_format_opts = {
    lsp_format = "never",
  },

  formatters_by_ft = {
    lua = { "stylua" },
    go = { "goimports", "goftm" },
    python = { "black" },
    cpp = {},
    -- css = { "prettier" },
    -- html = { "prettier" },
  },

  format_on_save = {
    -- These options will be passed to conform.format()
    timeout_ms = 500,
    lsp_format = "prefer",
    --lsp_fallback = true,
  },
}

return options
