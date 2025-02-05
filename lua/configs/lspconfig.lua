-- load defaults i.e lua_lsp
require("nvchad.configs.lspconfig").defaults()

local lspconfig = require "lspconfig"

local servers = {
    "clangd",
    "html",
    "cssls",
    "ts_ls",
    "java_language_server",
    "gopls",
    "pylsp",
    "docker_compose_language_service",
    "omnisharp",
    "sqls",
    "sqlls",
}
local nvlsp = require "nvchad.configs.lspconfig"

-- lsps with default config
for _, lsp in ipairs(servers) do
    lspconfig[lsp].setup {
        on_attach = nvlsp.on_attach,
        on_init = nvlsp.on_init,
        capabilities = nvlsp.capabilities,
    }
end

lspconfig.omnisharp.setup {
    cmd = { "/home/quala/.local/share/nvim/mason/bin/omnisharp" },
    root_dir = lspconfig.util.root_pattern("*.csproj", ".git"),
}
