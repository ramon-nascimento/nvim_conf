return {
    {
        "stevearc/conform.nvim",
        event = "BufWritePre", -- uncomment for format on save
        opts = require "configs.conform",
    },

    {
        "neovim/nvim-lspconfig",
        config = function()
            require "configs.lspconfig"
        end,
    },

    {
        "nvim-treesitter/nvim-treesitter",
        opts = {
            ensure_installed = {
                "vim",
                "lua",
                "vimdoc",
                "html",
                "css",
                "c",
                "cpp",
                "python",
                "go",
                "c_sharp",
                "sql",
            },
        },
    },

    {
        "lewis6991/gitsigns.nvim",
        config = function()
            require("gitsigns").setup {}
        end,
    },

    {
        "S1M0N38/love2d.nvim",
        cmd = "LoveRun",
        opts = {},
        keys = {
            { "<leader>v", ft = "lua", desc = "LÖVE" },
            {
                "<leader>vv",
                "<cmd>LoveRun<cr>",
                ft = "lua",
                desc = "Run LÖVE",
            },
            {
                "<leader>vs",
                "<cmd>LoveStop<cr>",
                ft = "lua",
                desc = "Stop LÖVE",
            },
        },
    },
}
