-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- local dicsipline = require("honocat.discipline")
-- dicsipline.cowboy()

local keymap = vim.keymap
local opts = { noremap = true, silent = true }

-- Increment/decrement
keymap.set("n", "+", "<C-a>")
keymap.set("n", "-", "<C-x>")

-- Delete a word backwords
keymap.set("n", "dw", "vb_d")

-- Select all
keymap.set("n", "<C-a>", "gg<S-v>G")

-- Jumplist
keymap.set("n", "<C-m>", "<C-i>", opts)

-- Move corsor
keymap.set({ "n", "v" }, "H", "^")
keymap.set({ "n", "v" }, "L", "$")
keymap.set({ "n", "v" }, "<leader>j", "10j", opts)
keymap.set({ "n", "v" }, "<leader>k", "10k", opts)

-- New tab
keymap.set("n", "te", ":tabedit", opts)
keymap.set("n", "<tab>", ":tabnext<Return>", opts)
keymap.set("n", "<C-tab>", ":tabprev<Return>", opts)
keymap.set("n", "tc", ":tabclose", opts)

-- Move Buffer
keymap.set("n", "bn", ":bn<Return>", opts)
keymap.set("n", "bp", ":bp<Return>", opts)
-- Delete Buffer
keymap.set("n", "bd", ":bd<Return>", opts)

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

-- Diagnostics
-- keymap.set("n", "<C-j>", function()
--   vim.diagnostic.goto_next()
-- end, opts)
