return {
  "zbirenbaum/copilot.lua",
  cmd = "Copilot",
  event = { "InsertEnter", "BufEnter" },
  config = function()
    require("copilot").setup({
      suggestion = {
        enabled = true,
        auto_trigger = true,
        debounce = 50, -- increase slightly
        keymap = {
          accept = "<C-j>",
          accept_word = "<C-w>", -- add word acceptance
          accept_line = "<C-]>", -- add line acceptance
          next = "<M-]>",
          prev = "<M-[>",
          dismiss = "<C-]>",
        },
        cache_path = vim.fn.stdpath("cache") .. "/copilot",
      },
      panel = {
        enabled = true,
        auto_refresh = false,
        keymap = {
          jump_prev = "[[",
          jump_next = "]]",
          accept = "<CR>",
          refresh = "gr",
          open = "<M-CR>",
        },
      },
      filetypes = {
        yaml = false,
        markdown = false,
        help = false,
        gitcommit = false,
        gitrebase = false,
        hgcommit = false,
        svn = false,
        cvs = false,
        ["."] = false,
        javascript = true,
        typescript = true,
        python = true,
        lua = true,
      },
    })
  end,
}
