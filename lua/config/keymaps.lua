-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local oil = require("oil")
local discipline = require("leninner.discipline")
discipline.cowboy()
oil.setup()

local keymap = vim.keymap
local opts = { noremap = true, silent = true }

-- Select all
keymap.set("n", "<C-a>", "gg<S-v>G")

-- Split window
keymap.set("n", "ss", ":split<Return>", opts)
keymap.set("n", "sv", ":vsplit<Return>", opts)

-- Move window
keymap.set("n", "sh", "<C-w>h")
keymap.set("n", "sk", "<C-w>k")
keymap.set("n", "sj", "<C-w>j")
keymap.set("n", "sl", "<C-w>l")

-- Resize window
keymap.set("n", "<C-w><left>", "<C-w><")
keymap.set("n", "<C-w><right>", "<C-w>>")
keymap.set("n", "<C-w><up>", "<C-w>+")
keymap.set("n", "<C-w><down>", "<C-w>-")

-- Go to the beginning or end of line
keymap.set("n", "L", "$")
keymap.set("n", "H", "0")

----- OIL -----------
-- Navigate between buffers
keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })

-- Delete all buffers but the current one
keymap.set(
  "n",
  "<leader>bq",
  '<Esc>:%bdelete|edit #|normal`"<Return>',
  { desc = "Delete other buggers but the current one" }
)

-- Move lines up and down
keymap.set("n", "<A-j>", ":m+<CR>==", opts)
keymap.set("i", "<A-j>", "<Esc>:m+<CR>==gi", opts)
keymap.set("v", "<A-j>", ":m'>+<CR>gv=gv", opts)
keymap.set("n", "<A-down>", ":m+<CR>==", opts)

keymap.set("n", "<A-k>", ":m-2<CR>==", opts)
keymap.set("i", "<A-k>", "<Esc>:m-2<CR>==gi", opts)
keymap.set("v", "<A-k>", ":m-2<CR>gv=gv", opts)
keymap.set("n", "<A-up>", ":m-2<CR>==", opts)

-- Rename all occurrences
keymap.set("n", "<leader>rn", function()
  return ":IncRename " .. vim.fn.expand("<cword>")
end, { expr = true })
