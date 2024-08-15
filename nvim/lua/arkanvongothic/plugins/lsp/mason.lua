return {
  "williamboman/mason.nvim",
  dependencies = {
    "williamboman/mason-lspconfig.nvim",
    "WhoIsSethDaniel/mason-tool-installer.nvim",
  },
  config = function()
    -- Import mason
    local mason = require("mason")

    -- Import mason-lspconfig
    local mason_lspconfig = require("mason-lspconfig")

    local mason_tool_installer = require("mason-tool-installer")


    -- Habilitar mason y configurar iconos
    mason.setup({
      ui = {
        icons = {
          package_installed = "",
          package_pending = "",
          package_uninstalled = "",
        },
      },
    })

    mason_lspconfig.setup({
      -- Lista de servidores para que mason los instale
      ensure_installed = {
        --"tsserver", -- TypeScript
        --"stylua",
        --"rust-analyzer",
        "clangd",
        "html",  -- HTML
        "cssls", -- CSS
        --"tailwindcss", -- Tailwind CSS
        --"svelte", -- Svelte
        "lua_ls", -- Lua
        --"graphql", -- GraphQL
        --"emmet_ls", -- Emmet
        --"prismals", -- Prisma
        "pyright", -- Python
      },
      -- Instalar automáticamente el servidor configurado
      --automatic_installation = true, -- No es lo mismo que ensure_installed
    })

    mason_tool_installer.setup({
      ensure_installed = {
        "prettier", -- Formateador más bonito
        "stylua",   -- Formateador lua
        --"isort",    -- Formateador python
        --"black",    -- Formateador python
        --"pylint",   -- Linter python
        "eslint_d", -- Linter js
      },
    })
  end,
}
