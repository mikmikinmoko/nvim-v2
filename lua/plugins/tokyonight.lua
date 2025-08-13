return {
  {
    "folke/tokyonight.nvim",
    enabled = false,
    opts = {
      style = "storm", -- "night", "moon", "day", "storm"
      transparent = true,
      styles = {
        sidebars = "transparent",
        floats = "transparent",
      },
    },
    on_highlights = function(highlights, colors)
      highlights.NormalFloat = { bg = "none" }
      highlights.FloatBar = { bg = "none" }
      highlights.Pmenu = { bg = "none" }
    end,
    config = function(_, opts)
      require("tokyonight").setup(opts)
      vim.cmd([[colorscheme tokyonight]])
    end,
  },
}
