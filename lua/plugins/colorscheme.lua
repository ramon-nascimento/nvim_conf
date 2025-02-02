return {
  {
    "scottmckendry/cyberdream.nvim",
    lazy = false,
    priority = 1000,
    opts = function(_, opts)
      opts.transparent = true
      opts.italic_comments = true
      opts.borderless_telescope = false
    end,
  },
  {
    "metalelf0/base16-black-metal-scheme",
    lazy = false,
    priority = 1000,
  },
  {
    "vague2k/vague.nvim",
    lazy = false,
    config = function()
      require("vague").setup {
        vim.cmd.colorscheme "vague",
      }
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
      vim.o.cursorline = false
      vim.o.number = true
      vim.o.termguicolors = true
    end,
    opts = {},
  },
}
