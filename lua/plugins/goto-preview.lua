return {
  "rmagatti/goto-preview",
  event = "BufEnter",
  config = function()
    require("goto-preview").setup({
      default_mappings = false,
      width = 150, -- Width of the floating window
      height = 20, -- Height of the floating window
    })
  end,
}
