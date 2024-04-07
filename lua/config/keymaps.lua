-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local discipline = require("leninner.discipline")
discipline.cowboy()

local keymap = vim.keymap
local opts = { noremap = true, silent = true }

-- Increment / decrement
keymap.set("n", "+", "<C-a>")
keymap.set("n", "-", "<C-x>")

-- Delete a word backwards
keymap.set("n", "dw", "vb_d")

-- Select all
keymap.set("n", "<C-a>", "gg<S-v>G")

-- Jumplist
keymap.set("n", "<C-m>", "<C-i>", opts)

-- New tab
keymap.set("n", "te", ":tabedit", opts)
keymap.set("n", "<tab>", ":tabnext<Return>", opts)
keymap.set("n", "<s-tab>", ":tabprev<Return>", opts)

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
keymap.set("n", "H", "^")

-- Diagnostic
keymap.set("n", "<C-j>", function()
  vim.diagnostic.goto_next()
end, opts)

-- Move lines up and down
keymap.set("n", "<A-j>", ":m+<CR>==", opts)
keymap.set("n", "<A-k>", ":m-2<CR>==", opts)
keymap.set("i", "<A-k>", "<Esc>:m-2<CR>==gi", opts)
keymap.set("i", "<A-j>", "<Esc>:m+<CR>==gi", opts)
keymap.set("v", "<A-k>", ":m-2<CR>gv=gv", opts)
keymap.set("v", "<A-j>", ":m'>+<CR>gv=gv", opts)

-- Select multiple lines with Shift + j or k
keymap.set("n", "<S-j>", ':<C-u>execute "normal! V" . (v:count1) . "k"<CR>', opts)
keymap.set("n", "<S-up>", ':<C-u>execute "normal! V" . (v:count1) . "k"<CR>', opts)
keymap.set("n", "<S-k>", ':<C-u>execute "normal! V" . (v:count1) . "j"<CR>', opts)
keymap.set("n", "<S-down>", ':<C-u>execute "normal! V" . (v:count1) . "j"<CR>', opts)

-- Rename all occurrences
keymap.set("n", "<leader>rn", ":IncRename ", opts)
