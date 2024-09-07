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
keymap.set("n", "sh", ":split<Return>", opts)
keymap.set("n", "sv", ":vsplit<Return>", opts)

------ Tabs --------
keymap.set("n", "<leader>to", ":tabnew<CR>", { desc = "Open new tab", noremap = true, silent = true })
keymap.set("n", "<leader>tc", ":tabclose<CR>", { desc = "Close tab", noremap = true, silent = true })

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
  { desc = "Delete other buffers but the current one" }
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
