return {
  "hrsh7th/nvim-cmp",
  event = "InsertEnter",
  dependencies = {
    "hrsh7th/cmp-buffer", -- Fuente de texto en buffer
    "hrsh7th/cmp-path",   -- Fuente de rutas del sistema de archivos
    {
      "L3MON4D3/LuaSnip",
      -- follow latest release.
      version = "v2.*", -- Reemplace <CurrentMajor> por la última versión principal publicada (primer número de la ultima versión)
      -- instalar jsregexp (opcional!).
      build = "make install_jsregexp",
    },
    "saadparwaiz1/cmp_luasnip",     -- Para autocompletar
    "rafamadriz/friendly-snippets", -- Fragmentos útiles
    "onsails/lspkind.nvim",         -- vs-code como pictogramas
  },
  config = function()
    local cmp = require("cmp")

    local luasnip = require("luasnip")

    local lspkind = require("lspkind")

    -- Carga fragmentos de estilo vscode de complementos instalados (ej. fragmentos amigables)
    require("luasnip.loaders.from_vscode").lazy_load()

    cmp.setup({
      completion = {
        completeopt = "menu,menuone,preview,noselect",
      },
      snippet = { -- Configurar cómo interactúa nvim-cmp con el motor de fragmentos
        expand = function(args)
          luasnip.lsp_expand(args.body)
        end,
      },
      mapping = cmp.mapping.preset.insert({
        ["<C-k>"] = cmp.mapping.select_prev_item(), -- Sugerencia anterior
        ["<C-j>"] = cmp.mapping.select_next_item(), -- Proxima sugerencia
        ["<C-b>"] = cmp.mapping.scroll_docs(-4),
        ["<C-f>"] = cmp.mapping.scroll_docs(4),
        ["<C-y>"] = cmp.mapping.complete(), -- Mostrar sugerencias de finalización
        ["<C-e>"] = cmp.mapping.abort(),    -- Cerrar ventana de finalización
        ["<CR>"] = cmp.mapping.confirm({ select = false }),
      }),
      -- Fuentes para autocompletado
      sources = cmp.config.sources({
        { name = "nvim_lsp" },
        { name = "luasnip" }, -- Fragmentos
        { name = "buffer" },  -- Texto dentro del buffer actual
        { name = "path" },    -- Rutas del sistema de archivos
      }),

      -- Configure lspkind para pictogramas similares a vs-code en el menú de finalización
      formatting = {
        format = lspkind.cmp_format({
          maxwidth = 50,
          ellipsis_char = "...",
        }),
      },
    })
  end,
}
