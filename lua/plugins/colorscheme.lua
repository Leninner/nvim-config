return {
  {
    "folke/tokyonight.nvim",
    lazy = true,
    name = "tokyonight",
    priority = 999,
    opts = {
      transparent = true,
    },
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "tokyonight",
    },
  },
}
