return {
  {
    "nvim-lualine/lualine.nvim",
    opts = function()
      local M = {}
      M.theme = function()
        local colors = {
          darkgray = "#16161d",
          gray = "#727169",
          normal = "#7e9cd8",
          insert = "#98bb6c",
          visual = "#ffa066",
          replace = "#e46876",
          command = "#e6c384",
        }
        return {
          inactive = {
            a = { fg = colors.gray, bg = "", gui = "bold" },
            b = { fg = colors.gray, bg = "" },
            c = { fg = colors.gray, bg = "" },
          },
          visual = {
            a = { fg = colors.darkgray, bg = colors.visual, gui = "bold" },
            b = { fg = colors.gray, bg = "" },
            c = { fg = colors.gray, bg = "" },
          },
          replace = {
            a = { fg = colors.darkgray, bg = colors.replace, gui = "bold" },
            b = { fg = colors.gray, bg = "" },
            c = { fg = colors.gray, bg = "" },
          },
          normal = {
            a = { fg = colors.darkgray, bg = colors.normal, gui = "bold" },
            b = { fg = colors.gray, bg = "" },
            c = { fg = colors.gray, bg = "" },
          },
          insert = {
            a = { fg = colors.darkgray, bg = colors.insert, gui = "bold" },
            b = { fg = colors.gray, bg = "" },
            c = { fg = colors.gray, bg = "" },
          },
          command = {
            a = { fg = colors.darkgray, bg = colors.command, gui = "bold" },
            b = { fg = colors.gray, bg = "" },
            c = { fg = colors.gray, bg = "" },
          },
        }
      end
      return {
        options = {
          theme = M.theme(),
          section_separators = "",
          component_separators = "",
          globalstatus = true,
        },
      }
    end,
  },
}
