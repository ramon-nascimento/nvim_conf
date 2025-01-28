require "nvchad.options"

-- add yours here!

--vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
--vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })

local opt = vim.opt

opt.wrap = true

-- Configuração de indentação
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.smartindent = true
opt.softtabstop = 2

-- Configurando numeros das linhas
opt.number = true
opt.relativenumber = true
opt.ruler = true
--opt.cursorlineopt = "both" -- to enable cursorline!
