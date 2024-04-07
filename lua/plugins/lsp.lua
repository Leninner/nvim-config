return {
  "williamboman/mason.nvim",
  opts = function(_, opts)
    vim.list_extend(opts.ensure_installed, {
      "stylua",
      "selene",
      "luacheck",
      "shellcheck",
      "shfmt",
      "gofmt",
      "typescript-language-server",
    })

    return {
      cmd = { "mason", "lsp" },
      ft = { "mason" },
    }
  end,
}
