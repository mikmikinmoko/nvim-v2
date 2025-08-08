return {
  {
    "nvim-lualine/lualine.nvim",
    opts = function(_, opts)
      -- Copilot component
      local function copilot()
        local icons = {
          enabled = "🤖 ", -- Copilot enabled/idle
          working = "💭 ", -- Active/Suggesting
          disabled = "🔌 ", -- Copilot disabled
        }
        local status = require("copilot.api").status.data

        -- Handle different copilot.lua status states
        if status.status == "Normal" then
          return icons.enabled
        elseif status.status == "InProgress" then
          return icons.working
        else
          return icons.disabled
        end
      end

      -- Clear existing sections
      -- opts.sections.lualine_a = {}
      opts.sections.lualine_b = {}
      opts.sections.lualine_c = {}
      opts.sections.lualine_x = {
        copilot, -- Add copilot component to lualine_x
      }
      opts.sections.lualine_y = {}
      opts.sections.lualine_z = {
        "branch",
      }
    end,
  },
}
