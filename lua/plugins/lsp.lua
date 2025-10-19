return {
  "mason-org/mason.nvim",
  opts = function(_, opts)
    opts.ensure_installed = opts.ensure_installed or {}
    local packages = {
      "stylua",
      "selene", 
      "luacheck",
      "shellcheck",
      "shfmt",
      "typescript-language-server",
    }
    
    for _, package in ipairs(packages) do
      if not vim.tbl_contains(opts.ensure_installed, package) then
        table.insert(opts.ensure_installed, package)
      end
    end
  end,
}
