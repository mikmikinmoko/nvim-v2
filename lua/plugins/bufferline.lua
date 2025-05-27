return {
  {
    "akinsho/bufferline.nvim",
    dependencies = "nvim-tree/nvim-web-devicons",
    config = function()
      require("bufferline").setup({
        options = {
          numbers = "none", -- or "ordinal" | "buffer_id" | "both"
          close_command = "bdelete! %d", -- command to close buffer
          right_mouse_command = "bdelete! %d", -- close buffer on right click
          left_mouse_command = "buffer %d", -- switch to buffer on left click
          middle_mouse_command = nil, -- disable middle click or set a command
          -- indicator = { style = "icon", icon = "▎" },
          buffer_close_icon = "x",
          modified_icon = "●",
          close_icon = "x",
          left_trunc_marker = "",
          right_trunc_marker = "",
          max_name_length = 20,
          max_prefix_length = 15,
          tab_size = 20,
          diagnostics = false, -- or "nvim_lsp"
          offsets = {
            {
              filetype = "NvimTree",
              text = "File Explorer",
              text_align = "center",
              padding = 1,
            },
          },
          show_buffer_icons = true,
          show_buffer_close_icons = true,
          show_close_icon = false,
          show_tab_indicators = true,
          persist_buffer_sort = true,
          -- separator_style = "slant", -- "slant", "thick", "thin"
          enforce_regular_tabs = false,
          always_show_bufferline = false,
          sort_by = "insert_after_current",
        },
        highlights = {
          fill = {
            fg = "#cdd6f4",
            bg = "#1e1e2e",
          },
          background = {
            fg = "#6c7086",
            bg = "#1e1e2e",
          },
          buffer_selected = {
            fg = "#cdd6f4",
            bold = true,
            bg = "#313244",
          },
          buffer_visible = {
            fg = "#bac2de",
            bg = "#1e1e2e",
          },
          close_button = {
            fg = "#6c7086",
            bg = "#1e1e2e",
          },
          close_button_visible = {
            fg = "#6c7086",
            bg = "#1e1e2e",
          },
          close_button_selected = {
            fg = "#cdd6f4",
            bg = "#313244",
          },
          tab_selected = {
            fg = "#cdd6f4",
            bg = "#313244",
          },
          tab = {
            fg = "#6c7086",
            bg = "#1e1e2e",
          },
          tab_close = {
            fg = "#f38ba8",
            bg = "#1e1e2e",
          },
        },
      })
    end,
  },
}
