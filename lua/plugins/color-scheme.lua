return {
  {
    "folke/tokyonight.nvim",
    lazy = false, -- make sure it's loaded during startup
    priority = 1000, -- ensure it loads before other plugins
    opts = {
      style = "storm", -- can be "storm", "night", "moon", "day"
      transparent = true,
      styles = {
        sidebars = "transparent",
        floats = "transparent",
      },
    },
    config = function(_, opts)
      require("tokyonight").setup(opts)
      vim.cmd([[colorscheme tokyonight]])
    end,
  },
}
-- Catppuccin Theme
-- return {
--   {
--     "catppuccin",
--     opts = {
--       transparent_background = true,
--       flavour = "mocha", -- Choose from: latte, frappe, macchiato, mocha
--       integrations = {
--         cmp = true,
--         gitsigns = true,
--         nvimtree = true,
--         telescope = { enabled = true },
--         treesitter = true,
--         which_key = true,
--         notify = true,
--         mini = true,
--       },
--     },
--   },
--   {
--     "LazyVim/LazyVim",
--     opts = {
--       colorscheme = "catppuccin",
--     },
--   },
-- }
