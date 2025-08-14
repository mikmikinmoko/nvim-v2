return {
  -- {
  --   "folke/tokyonight.nvim",
  --   enabled = true,
  --   opts = {
  --     style = "night", -- "night", "moon", "day", "storm"
  --     transparent = true,
  --     styles = {
  --       sidebars = "transparent",
  --       floats = "transparent",
  --     },
  --   },
  --   on_highlights = function(highlights, colors)
  --     highlights.NormalFloat = { bg = "none" }
  --     highlights.FloatBar = { bg = "none" }
  --     highlights.Pmenu = { bg = "none" }
  --   end,
  --   config = function(_, opts)
  --     require("tokyonight").setup(opts)
  --     vim.cmd([[colorscheme tokyonight]])
  --   end,
  -- },
  -- {
  --   "projekt0n/github-nvim-theme",
  --   lazy = false, -- make sure we load this during startup if it is your main colorscheme
  --   priority = 1000, -- make sure to load this before all the other start plugins
  --   config = function()
  --     require("github-theme").setup({
  --       options = {
  --         transparent = true,
  --         terminal_colors = false,
  --         styles = {
  --           comments = "italic",
  --           keywords = "bold",
  --           types = "italic,bold",
  --         },
  --       },
  --       palettes = {
  --         github_dark_high_contrast = {},
  --       },
  --     })
  --
  --     vim.cmd("colorscheme github_dark")
  --   end,
  -- },
  {
    "projekt0n/github-nvim-theme",
    lazy = false,
    priority = 1000,
    config = function()
      require("github-theme").setup({
        options = {
          transparent = true,
          terminal_colors = false,
          styles = {
            comments = "italic",
            keywords = "bold",
            types = "italic,bold",
          },
        },
        palettes = {
          github_dark_high_contrast = {},
        },
      })

      -- Apply colorscheme
      vim.cmd("colorscheme github_dark")

      -- Make Telescope / floating windows transparent
      local highlights = {
        "NormalFloat",
        "TelescopeNormal",
        "TelescopePromptNormal",
        "TelescopeResultsNormal",
        "TelescopePreviewNormal",
      }
      for _, group in ipairs(highlights) do
        vim.api.nvim_set_hl(0, group, { bg = "none" })
      end

      -- Set all Telescope borders to white - use defer to ensure it applies after everything loads
      vim.defer_fn(function()
        vim.api.nvim_set_hl(0, "TelescopeBorder", { fg = "#FFFFFF", bg = "none" })
        vim.api.nvim_set_hl(0, "TelescopePromptBorder", { fg = "#FFFFFF", bg = "none" })
        vim.api.nvim_set_hl(0, "TelescopeResultsBorder", { fg = "#FFFFFF", bg = "none" })
        vim.api.nvim_set_hl(0, "TelescopePreviewBorder", { fg = "#FFFFFF", bg = "none" })
        vim.api.nvim_set_hl(0, "FloatBorder", { fg = "#FFFFFF", bg = "none" })
      end, 100)

      -- Configure Telescope to use borders
      local telescope_ok, telescope = pcall(require, "telescope")
      if telescope_ok then
        telescope.setup({
          defaults = {
            borderchars = { "─", "│", "─", "│", "╭", "╮", "╯", "╰" },
            winblend = 0,
          },
          pickers = {
            find_files = {
              borderchars = { "─", "│", "─", "│", "╭", "╮", "╯", "╰" },
            },
            live_grep = {
              borderchars = { "─", "│", "─", "│", "╭", "╮", "╯", "╰" },
            },
            buffers = {
              borderchars = { "─", "│", "─", "│", "╭", "╮", "╯", "╰" },
            },
          },
        })
      end
    end,
  },
}
