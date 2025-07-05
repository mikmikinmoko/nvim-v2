-- return {
--   "nvim-neo-tree/neo-tree.nvim",
--   opts = {
--     filesystem = {
--       renderers = {
--         root = {
--           { "indent" },
--         },
--       },
--       filtered_items = {
--         visible = true,
--         hide_dotfiles = false,
--         hide_gitignored = false,
--       },
--       follow_current_file = {
--         enabled = true, -- This ensures the current file is focused
--         leave_dirs_open = false,
--       },
--       hijack_netrw_behavior = "open_current",
--     },
--     window = {
--       position = "float",
--       popup = {
--         size = {
--           height = "80%",
--           width = "60%",
--         },
--         show_title = false,
--       },
--     },
--   },
--   keys = {
--     {
--       "<leader>e",
--       function()
--         require("neo-tree.command").execute({ toggle = true, reveal = true })
--       end,
--       desc = "Toggle Neo-tree (Floating & Reveal Current File)",
--     },
--   },
-- }
return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    opts = {
      sources = { "filesystem", "buffers", "git_status" },
      -- Make all sources use the same floating config
      source_selector = {
        winbar = false,
        statusline = false,
      },
      filesystem = {
        renderers = {
          root = {
            { "indent" }, -- remove root label/snack
          },
        },
        filtered_items = {
          visible = true,
          hide_dotfiles = false,
          hide_gitignored = false,
        },
        follow_current_file = {
          enabled = true,
          leave_dirs_open = false,
        },
        hijack_netrw_behavior = "open_current",
      },
      buffers = {
        follow_current_file = {
          enabled = true,
          leave_dirs_open = false,
        },
      },
      git_status = {
        window = {
          mappings = {
            ["A"] = "git_add_all",
          },
        },
      },
      window = {
        position = "float",
        popup = {
          size = {
            height = "80%",
            width = "60%",
          },
          show_title = false,
          border = "rounded", -- ✅ adds rounded corners
          position = "50%", -- centers the window
        },
      },
    },
    keys = {
      {
        "<leader>e",
        function()
          require("neo-tree.command").execute({
            toggle = true,
            reveal = true,
            source = "filesystem", -- can be buffers or git_status too
          })
        end,
        desc = "Toggle Neo-tree (Floating & Reveal Current File)",
      },
      {
        "<leader>b",
        function()
          require("neo-tree.command").execute({
            toggle = true,
            source = "buffers",
          })
        end,
        desc = "Toggle Buffers in Neo-tree (Floating)",
      },
      {
        "<leader>g",
        function()
          require("neo-tree.command").execute({
            toggle = true,
            source = "git_status",
          })
        end,
        desc = "Toggle Git in Neo-tree (Floating)",
      },
    },
  },
  -- Disable snack's file tree
  {
    "folke/snacks.nvim",
    opts = {
      explorer = {
        enabled = false,
      },
    },
  },
}
