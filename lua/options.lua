require "nvchad.options"

-- add yours here!

--vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
--vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })

local opt = vim.opt

opt.wrap = true

-- Configuração de indentação
opt.tabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.smartindent = true
opt.softtabstop = 4

-- Configurando numeros das linhas
opt.number = true
opt.relativenumber = true
opt.ruler = true
--opt.cursorlineopt = "both" -- to enable cursorline!
