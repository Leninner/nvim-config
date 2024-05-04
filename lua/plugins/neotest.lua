return {
  {
    "nvim-neotest/neotest",
    opts = { adapters = { "neotest-go", "neotest-jest", "neotest-vitest" } },
    dependencies = {
      "nvim-neotest/nvim-nio",
      "nvim-lua/plenary.nvim",
      "antoinemadec/FixCursorHold.nvim",
      "nvim-treesitter/nvim-treesitter",
    },
  },
}
