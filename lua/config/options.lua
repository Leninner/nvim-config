-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
local opt = vim.opt

-- Undercurl
vim.cmd([[let &t_Cs = "\e[4:3m"]])
vim.cmd([[let &t_Ce = "\e[4:0m"]])

-- Search and replace
opt.ignorecase = true -- search case insensitive
opt.smartcase = true -- search matters if capital letter is used
opt.inccommand = "split" -- for incsearch while sub

opt.sw = 2
opt.ruler = true
opt.cursorline = true

vim.diagnostic.config({
  virtual_text = false,
  signs = false,
  underline = false,
  update_in_insert = false,
})
