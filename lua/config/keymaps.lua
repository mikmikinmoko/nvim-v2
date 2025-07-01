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
-- vim.keymap.set("n", "<leader>bn", ":bnext<CR>", { desc = "Next Buffer" })
-- vim.keymap.set("n", "<leader>bp", ":bprevious<CR>", { desc = "Previous Buffer" })

vim.keymap.set("n", "<Tab>", ":BufferLineCycleNext<CR>", { silent = true })
vim.keymap.set("n", "<S-Tab>", ":BufferLineCyclePrev<CR>", { silent = true })

-- Move cursor while in insert mode
vim.keymap.set("i", "<C-h>", "<Left>", { desc = "Move left" })
vim.keymap.set("i", "<C-j>", "<Down>", { desc = "Move Down" })
vim.keymap.set("i", "<C-k>", "<Up>", { desc = "Move Up" })
vim.keymap.set("i", "<C-l>", "<Right>", { desc = "Move Right" })

vim.keymap.set("n", "<leader>cc", "<cmd>ClaudeCode<CR>", { desc = "Toggle Claude Code" })
