return {
  "akinsho/toggleterm.nvim",
  version = "*",
  config = function()
    require("toggleterm").setup({
      open_mapping = [[<c-\>]],
      shade_terminals = false,
      -- Ensure interactive login shell so .zshrc is loaded
      shell = vim.fn.executable("zsh") == 1 and "zsh --login -i" or vim.o.shell,
      direction = "float",
      float_opts = {
        border = "curved",
        width = function()
          return math.floor(vim.o.columns * 0.8)
        end,
        height = function()
          return math.floor(vim.o.lines * 0.8)
        end,
        winblend = 0,
      },
      highlights = {
        FloatBorder = { link = "Normal" },
        Normal = { link = "Normal" },
      },
    })
  end,
  keys = {
    { [[<C-\>]] },
    {
      "<leader>R",
      function()
        require("toggleterm").toggle(2, nil, nil, "float")
      end,
      desc = "Toggle Floating Terminal 2",
    },
    {
      "<leader>r",
      function()
        require("toggleterm").toggle(1, nil, nil, "float")
      end,
      desc = "Toggle Floating Terminal 1",
    },
  },
}
