return {
  "nvim-neo-tree/neo-tree.nvim",
  opts = {
    filesystem = {
      filtered_items = {
        visible = true,
        hide_dotfiles = false,
        hide_gitignored = false,
      },
      follow_current_file = {
        enabled = true, -- This ensures the current file is focused
        leave_dirs_open = false,
      },
      hijack_netrw_behavior = "open_current",
    },
    window = {
      position = "float",
      popup = {
        size = {
          height = "80%",
          width = "60%",
        },
      },
    },
  },
  keys = {
    {
      "<leader>e",
      function()
        require("neo-tree.command").execute({ toggle = true, reveal = true })
      end,
      desc = "Toggle Neo-tree (Floating & Reveal Current File)",
    },
  },
}
