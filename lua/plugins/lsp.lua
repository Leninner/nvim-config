return {
  "williamboman/mason.nvim",
  opts = function(_, opts)
    vim.list_extend(opts.ensure_installed, {
      "stylua",
      "vscode-eslint-language-server",
      "selene",
      "luacheck",
      "shellcheck",
      "shfmt",
      "typescript-language-server",
    })
  end,
}
