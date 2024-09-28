return {
  -- Select a colorscheme by setting colorscheme = "name"
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin",
    },
  },
  -- onedarkpro
  {
    "olimorris/onedarkpro.nvim",
    priority = 1000,
    name = "onedark_vivid",
  },
  -- tokyonight
  {
    "folke/tokyonight.nvim",
    lazy = true,
    name = "tokyonight",
    priority = 999,
    opts = {
      style = "storm",
      transparent = true,
    },
  },
  -- catppuccino
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    opts = {
      flavour = "macchiato",
      transparent_background = true,
    },
  },
}
