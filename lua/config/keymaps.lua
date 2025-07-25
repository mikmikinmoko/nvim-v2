-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Toggle Tab next and prev and new tab
-- vim.keymap.set("n", "<leader>tt", ":tabnew<CR>", { desc = "New Tab" })
-- vim.keymap.set("n", "<leader>tn", ":tabnext<CR>", { desc = "Next Tab" })
-- vim.keymap.set("n", "<leader>tp", ":tabprevious<CR>", { desc = "Previous Tab" })
-- vim.keymap.set("n", "<leader>tp", ":tabprevious<CR>", { desc = "Previous Tab" })

-- Toggle Buffer next and prev
-- vim.keymap.set("n", "<leader>bn", ":bnext<CR>", { desc = "Next Buffer" })
-- vim.keymap.set("n", "<leader>bp", ":bprevious<CR>", { desc = "Previous Buffer" })

-- vim.keymap.set("n", "<Tab>", ":BufferLineCycleNext<CR>", { silent = true })
-- vim.keymap.set("n", "<S-Tab>", ":BufferLineCyclePrev<CR>", { silent = true })

-- Neo-Tree
-- vim.keymap.set("n", "<leader>e", "<cmd>Neotree filesystem toggle left<cr>", { desc = "Toggle Neo-tree (cwd)" })

-- Move cursor while in insert mode
vim.keymap.set("i", "<C-h>", "<Left>", { desc = "Move left" })
vim.keymap.set("i", "<C-j>", "<Down>", { desc = "Move Down" })
vim.keymap.set("i", "<C-k>", "<Up>", { desc = "Move Up" })
vim.keymap.set("i", "<C-l>", "<Right>", { desc = "Move Right" })

-- vim.keymap.set("n", "<leader>cc", "<cmd>ClaudeCode<CR>", { desc = "Toggle Claude Code" })

-- Toggle Terminal
-- vim.keymap.set("n", "<leader>th", "<cmd>ToggleTerm direction=horizontal<CR>", { desc = "Terminal horizontal" })

-- search current buffer
vim.keymap.set("n", "/", function()
  require("telescope.builtin").current_buffer_fuzzy_find({
    previewer = false,
    layout_config = {
      prompt_position = "top",
    },
    sorting_strategy = "ascending",
  })
end, { desc = "Telescope: Search in current buffer" })

-- search accross the whole project
vim.keymap.set("n", "<leader>/", function()
  require("telescope.builtin").live_grep({
    layout_config = {
      prompt_position = "top",
    },
    sorting_strategy = "ascending",
  })
end, { desc = "Telescope: Search project" })
