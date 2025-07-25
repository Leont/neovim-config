return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

  -- test new blink
  -- { import = "nvchad.blink.lazyspec" },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "vim", "lua", "vimdoc", "html", "css", "perl", "rust", "c", "cpp", "gitcommit", "gitignore", "git_rebase", "json", "make", "yaml"
      },
      indent = {
        enable = false
      },
    },
  },

  {
    "hrsh7th/nvim-cmp",
    opts = function(_, conf)
      conf.mapping["<C-y>"] = conf.mapping["<CR>"]
      conf.mapping["<CR>"] = nil

      conf.mapping["<C-Down>"] = conf.mapping["<Tab>"]
      conf.mapping["<Tab>"] = nil

      conf.mapping["<C-Up>"] = conf.mapping["<S-Tab>"]
      conf.mapping["<S-Tab>"] = nil

      return conf
    end,
  },
}
