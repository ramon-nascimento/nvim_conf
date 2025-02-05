local options = {
    default_format_opts = {
        lsp_format = "never",
    },

    formatters_by_ft = {
        lua = { "stylua" },
        go = { "goimports", "goftm" },
        python = { "black" },
        sql = { "sqlfmt" },
        cs = { "csharpier" },
    },

    format_on_save = {
        timeout_ms = 500,
        lsp_format = "fallback",
    },

    formatters = {
        csharpier = {
            command = "dotnet-csharpier",
            args = { "--write-stdout" },
        },
    },
}

return options
