return {
  {
    "olimorris/onedarkpro.nvim",
    priority = 1000,
    name = "onedark_vivid",
  },
  {
    "folke/tokyonight.nvim",
    lazy = true,
    name = "tokyonight",
    priority = 999,
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "onedark_vivid",
    },
  },
}
