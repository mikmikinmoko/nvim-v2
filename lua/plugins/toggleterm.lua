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
      -- Floating terminal with command (e.g., npm run dev)
      -- {
      --   "<leader>tn",
      --   function()
      --     local Terminal = require("toggleterm.terminal").Terminal
      --     local npm = Terminal:new({
      --       cmd = "npm run dev",
      --       hidden = true,
      --       direction = "float",
      --       float_opts = {
      --         border = "curved",
      --       },
      --       on_open = function(term)
      --         vim.cmd("startinsert!")
      --       end,
      --     })
      --     npm:toggle()
      --   end,
      --   desc = "Start Dev Server (npm run dev)",
      -- },
      -- Close current floating terminal (can be reused)
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
