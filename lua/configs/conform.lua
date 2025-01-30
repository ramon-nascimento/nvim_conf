local options = {
  default_format_opts = {
    lsp_format = "never",
  },

  formatters_by_ft = {
    lua = { "stylua" },
    go = { "goimports", "goftm" },
    python = { "black" },
  },

  format_on_save = {
    timeout_ms = 500,
    lsp_format = "fallback",
  },
}

return options
