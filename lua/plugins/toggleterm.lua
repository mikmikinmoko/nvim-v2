return {
  {
    -- amongst your other plugins
    { "akinsho/toggleterm.nvim", version = "*", config = true },
    -- or
    {
      "akinsho/toggleterm.nvim",
      version = "*",
      opts = {--[[ things you want to change go here]]
        -- open_mapping = [[<C-\>]],
        direction = "float",
        float_opts = {
          border = "curved",
        },
      },
      keys = {
        {
          "<leader>tf",
          function()
            require("toggleterm").toggle(nil, nil, nil, "float")
          end,
          desc = "Toggle Floating Terminal",
        },
        {
          "<leader>tx",
          function()
            require("toggleterm").toggle()
          end,
          mode = { "n", "t" },
          desc = "Close Floating Terminal",
        },
      },
    },
  },
}
