-- return {
--   {
--     "neovim/nvim-lspconfig",
--     opts = {
--       servers = {
--         vtsls = {
--           settings = {
--             typescript = {
--               inlayHints = {
--                 parameterNames = { enabled = "literals" },
--                 parameterTypes = { enabled = true },
--                 variableTypes = { enabled = true },
--                 propertyDeclarationTypes = { enabled = true },
--                 functionLikeReturnTypes = { enabled = true },
--               },
--             },
--           },
--           keys = {
--             {
--               "<leader>co",
--               function()
--                 vim.lsp.buf.code_action({
--                   apply = true,
--                   context = {
--                     only = { "source.organizeImports" },
--                     diagnostics = {},
--                   },
--                 })
--               end,
--               desc = "Organize Imports",
--             },
--             {
--               "<leader>cR",
--               function()
--                 vim.lsp.buf.code_action({
--                   apply = true,
--                   context = {
--                     only = { "source.removeUnused" },
--                     diagnostics = {},
--                   },
--                 })
--               end,
--               desc = "Remove Unused Imports",
--             },
--           },
--         },
--         tailwindcss = {
--           filetypes = {
--             "html",
--             "css",
--             "javascript",
--             "javascriptreact",
--             "typescript",
--             "typescriptreact",
--           },
--         },
--       },
--       setup = {
--         tsserver = function()
--           return false -- ⛔️ Don't use tsserver
--         end,
--         vtsls = function(_, opts)
--           require("lspconfig").vtsls.setup(opts)
--           return true
--         end,
--         tailwindcss = function(_, opts)
--           require("lspconfig").tailwindcss.setup(opts)
--           return true
--         end,
--       },
--     },
--   },
-- }
return {
  {
    "neovim/nvim-lspconfig",
    opts = function(_, opts)
      local lspconfig = require("lspconfig")
      local util = require("lspconfig.util")

      opts.servers = opts.servers or {}
      opts.setup = opts.setup or {}

      -- 🧠 Detect whether project has tsconfig.json or jsconfig.json
      local cwd = vim.fn.getcwd()
      local root = util.root_pattern("tsconfig.json", "jsconfig.json", "package.json", ".git")(cwd)
      local has_tsconfig = root and vim.fn.filereadable(root .. "/tsconfig.json") == 1
      local has_jsconfig = root and vim.fn.filereadable(root .. "/jsconfig.json") == 1

      -- 🧩 Tailwind setup (same as before)
      opts.servers.tailwindcss = {
        filetypes = {
          "html",
          "css",
          "javascript",
          "javascriptreact",
          "typescript",
          "typescriptreact",
        },
      }

      -- 🧰 Shared keys for import actions
      local import_keys = {
        {
          "<leader>co",
          function()
            vim.lsp.buf.code_action({
              apply = true,
              context = {
                only = { "source.organizeImports" },
                diagnostics = {},
              },
            })
          end,
          desc = "Organize Imports",
        },
        {
          "<leader>cR",
          function()
            vim.lsp.buf.code_action({
              apply = true,
              context = {
                only = { "source.removeUnused" },
                diagnostics = {},
              },
            })
          end,
          desc = "Remove Unused Imports",
        },
      }

      -- 🟦 If tsconfig exists → use vtsls
      if has_tsconfig then
        opts.setup.vtsls = function(_, user_opts)
          user_opts = vim.tbl_deep_extend("force", {
            settings = {
              typescript = {
                inlayHints = {
                  parameterNames = { enabled = "literals" },
                  parameterTypes = { enabled = true },
                  variableTypes = { enabled = true },
                  propertyDeclarationTypes = { enabled = true },
                  functionLikeReturnTypes = { enabled = true },
                },
              },
            },
            keys = import_keys,
          }, user_opts or {})
          lspconfig.vtsls.setup(user_opts)
          return true
        end

        opts.setup.tsserver = function()
          return false
        end
      else
        -- 🟨 Otherwise → use tsserver (better for JS)
        opts.setup.tsserver = function(_, user_opts)
          user_opts = vim.tbl_deep_extend("force", {
            settings = {
              javascript = {
                inlayHints = {
                  includeInlayParameterNameHints = "all",
                  includeInlayFunctionParameterTypeHints = true,
                  includeInlayVariableTypeHints = true,
                },
              },
            },
            keys = import_keys,
          }, user_opts or {})
          lspconfig.tsserver.setup(user_opts)
          return true
        end

        opts.setup.vtsls = function()
          return false
        end
      end

      -- Always setup tailwind
      opts.setup.tailwindcss = function(_, user_opts)
        lspconfig.tailwindcss.setup(user_opts)
        return true
      end
    end,
  },
}
