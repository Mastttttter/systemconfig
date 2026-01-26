return {
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = require("config.settings").colorscheme,
    },
  },
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {
      transparent = require("config.settings").transparent_color,
    },
  },
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    opts = {
      transparent_background = require("config.settings").transparent_color,
    },
  },
  {
    "ellisonleao/gruvbox.nvim",
    priority = 1000,
    config = true,
    opts = {
      transparent_mode = require("config.settings").transparent_color,
    },
  },
  {
    "rebelot/kanagawa.nvim",
    priority = 1000,
    config = true,
    opts = {
      transparent = require("config.settings").transparent_color,
    },
  },
}
