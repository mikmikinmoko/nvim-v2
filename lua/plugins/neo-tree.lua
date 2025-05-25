return {
  "nvim-neo-tree/neo-tree.nvim",
  opts = {
    filesystem = {
      filtered_items = {
        visible = true,
        hide_dotfiles = false,
        hide_gitignored = false,
      },
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
    { "<leader>e", "<cmd>Neotree toggle float<cr>", desc = "Toggle Neo-tree (Floating)" },
  },
}
