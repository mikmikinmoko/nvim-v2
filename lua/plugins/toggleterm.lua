return {
  {
    "akinsho/toggleterm.nvim",
    version = "*",
    opts = {
      direction = "float",
      float_opts = {
        border = "curved",
      },
    },
    keys = {
      -- Default floating terminal
      {
        "<leader>tf",
        function()
          require("toggleterm").toggle(1, nil, nil, "float")
        end,
        desc = "Toggle Floating Terminal 1",
      },
      -- Second floating terminal
      {
        "<leader>tg",
        function()
          require("toggleterm").toggle(2, nil, nil, "float")
        end,
        desc = "Toggle Floating Terminal 2",
      },
      {
        "<leader>tx",
        function()
          require("toggleterm").toggle()
        end,
        mode = { "n", "t" },
        desc = "Close Terminal",
      },
    },
  },
}
