-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set("i", "jk", "<Esc>", { desc = 'Press "jk" to enter normal mode' })
vim.keymap.set("n", "<C-d>", "<C-d>zz", { desc = "Scroll down with cursor at center" })
vim.keymap.set("n", "<C-u>", "<C-u>zz", { desc = "Scroll up with cursor at center" })
vim.keymap.set("n", "<C-n>", "<cmd>NvimTreeToggle<cr>", { desc = "Toggle NvimTree" })
vim.keymap.set("n", "<C-N>", "<cmd>NvimTreeFocus<cr>", { desc = "Focus NvimTree" })
-- Using ufo provider need remap `zR` and `zM`. If Neovim is 0.6.1, remap yourself
vim.keymap.set("n", "zR", require("ufo").openAllFolds)
vim.keymap.set("n", "zM", require("ufo").closeAllFolds)
