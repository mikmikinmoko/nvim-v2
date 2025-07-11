return {
  "NvChad/nvim-colorizer.lua",
  event = "BufReadPre",
  opts = {
    filetypes = { "*" },
    user_default_options = {
      RGB = true, -- #RGB hex codes
      RRGGBB = true, -- #RRGGBB hex codes
      names = false, -- "Name" codes like Blue
      RRGGBBAA = true, -- #RRGGBBAA hex codes
      AARRGGBB = true, -- 0xAARRGGBB hex codes
      rgb_fn = true, -- CSS rgb() and rgba() functions
      hsl_fn = true, -- CSS hsl() and hsla() functions
      css = true, -- Enable all CSS features
      css_fn = true, -- Enable all CSS *functions*
      mode = "background", -- Set the display mode
      tailwind = true, -- Enable tailwind colors
      sass = { enable = true, parsers = { "css" } },
      virtualtext = "■",
      always_update = false,
    },
    buftypes = {},
  },
}
