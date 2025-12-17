-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

-- Turn off paste mode when leaving insert
vim.api.nvim_create_autocmd("InsertLeave", {
  pattern = "*",
  command = "set nopaste",
})

-- Fix conceallevel for json files
vim.api.nvim_create_autocmd("FileType", {
  pattern = { "json", "jsonc" },
  callback = function()
    vim.wo.spell = false
    vim.wo.conceallevel = 0
  end,
})

-- Set orange color for cursor line number with enhanced visibility
local function set_cursorline_color()
  vim.api.nvim_set_hl(0, "CursorLineNr", {
    fg = "#FF8800",
    underline = false,
  })
end

vim.api.nvim_create_autocmd("ColorScheme", {
  pattern = "*",
  callback = set_cursorline_color,
})

set_cursorline_color()
