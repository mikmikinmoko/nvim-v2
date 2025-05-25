-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set("n", "<C-d>", "5j", { noremap = true, silent = true })
vim.keymap.set("n", "<C-u>", "5k", { noremap = true, silent = true })

-- Toggle Tab next and prev and new tab
vim.keymap.set("n", "<leader>tt", ":tabnew<CR>", { desc = "New Tab" })
vim.keymap.set("n", "<leader>tn", ":tabnext<CR>", { desc = "Next Tab" })
vim.keymap.set("n", "<leader>tp", ":tabprevious<CR>", { desc = "Previous Tab" })

-- Toggle Buffer next and prev
vim.keymap.set("n", "<leader>bn", ":bnext<CR>", { desc = "Next Buffer" })
vim.keymap.set("n", "<leader>bp", ":bprevious<CR>", { desc = "Previous Buffer" })
