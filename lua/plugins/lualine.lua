return {
  "nvim-lualine/lualine.nvim",
  opts = function()
    local icons = require("lazyvim.config").icons

    local colors = {
      bg = "#1e1e2e",
      fg = "#cdd6f4",
      yellow = "#f9e2af",
      cyan = "#89dceb",
      darkblue = "#89b4fa",
      green = "#a6e3a1",
      orange = "#fab387",
      violet = "#cba6f7",
      magenta = "#f38ba8",
      blue = "#89b4fa",
      red = "#f38ba8",
    }

    local custom_theme = {
      normal = {
        a = { fg = colors.bg, bg = colors.blue, gui = "bold" },
        b = { fg = colors.fg, bg = colors.bg },
        c = { fg = colors.fg, bg = colors.bg },
      },
      insert = {
        a = { fg = colors.bg, bg = colors.green, gui = "bold" },
      },
      visual = {
        a = { fg = colors.bg, bg = colors.magenta, gui = "bold" },
      },
      replace = {
        a = { fg = colors.bg, bg = colors.red, gui = "bold" },
      },
      command = {
        a = { fg = colors.bg, bg = colors.yellow, gui = "bold" },
      },
      inactive = {
        a = { fg = colors.fg, bg = colors.bg },
        b = { fg = colors.fg, bg = colors.bg },
        c = { fg = colors.fg, bg = colors.bg },
      },
    }

    -- Buffer count component
    local buffer_count = {
      function()
        local count = #vim.fn.getbufinfo({ buflisted = 1 })
        return " " .. count
      end,
      color = { fg = colors.cyan, bg = colors.bg },
    }

    return {
      options = {
        theme = custom_theme,
        section_separators = "",
        component_separators = "",
        globalstatus = true,
        icons_enabled = true,
        background = "NONE",
      },
      sections = {
        lualine_a = {
          { "mode", icon = "", upper = true },
        },
        lualine_b = {
          { "branch", icon = "" },
          { "diff", symbols = { added = " ", modified = " ", removed = " " } },
          { "diagnostics", symbols = { error = " ", warn = " ", info = " ", hint = " " } },
        },
        lualine_c = {
          { "filename", path = 1, symbols = { modified = "●", readonly = "🔒", unnamed = "Untitled" } },
          {
            function()
              return "-> mikmikinmoko"
            end,
            color = { fg = colors.yellow, gui = "bold" },
          },
        },
        lualine_x = {
          buffer_count, -- 🧮 BUFFER COUNT DISPLAYED HERE
          { "encoding", icon = "" },
          { "fileformat", icons_enabled = true },
          { "filetype", icon_only = true },
        },
        lualine_y = {
          { "progress", icon = "📈" },
        },
        lualine_z = {
          { "location", icon = "" },
        },
      },
    }
  end,
}
