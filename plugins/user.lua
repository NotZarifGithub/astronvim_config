return {
  -- You can also add new plugins here as well:
  -- Add plugins, the lazy syntax
  -- "andweeb/presence.nvim",
  -- {
  --   "ray-x/lsp_signature.nvim",
  --   event = "BufRead",
  --   config = function()
  --     require("lsp_signature").setup()
  --   end,
  -- },
  {
    "folke/todo-comments.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    opts = {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
    },
    event = "User Astrofile",
  },
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim",
      -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
    },
  },
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
  },
  -- default
  {
    "freddiehaddad/feline.nvim",
    opts = {},
  },

  -- with extras
  {
    "freddiehaddad/feline.nvim",
    opts = {},
    config = function(_, opts)
      require("feline").setup()
      require("feline").winbar.setup() -- to use winbar
      require("feline").statuscolumn.setup() -- to use statuscolumn

      require("feline").use_theme() -- to use a custom theme
    end,
  },
}
