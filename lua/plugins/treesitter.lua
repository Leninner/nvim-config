return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "cmake",
        "bash",
        "gitignore", 
        "go",
        "javascript",
        "json",
        "lua",
        "python",
        "typescript",
        "yaml",
        "dockerfile",
        "java",
        "sql",
      },
      auto_install = false,
    },
  },
}
