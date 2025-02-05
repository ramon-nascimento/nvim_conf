return {
    {
        "metalelf0/base16-black-metal-scheme",
        lazy = false,
        priority = 1000,
    },
    {
        "vague2k/vague.nvim",
        lazy = false,
        config = function()
            require("vague").setup {}
        end,
    },
    {
        "LazyVim/LazyVim",
        opts = {
            colorscheme = "vague",
        },
    },

    -- modicator (auto color line number based on vim mode)
    {
        "mawkler/modicator.nvim",
        dependencies = "scottmckendry/cyberdream.nvim",
        init = function()
            -- These are required for Modicator to work
            vim.o.cursorline = true
            vim.o.number = true
            vim.o.termguicolors = true
        end,
        opts = {},
    },
}
