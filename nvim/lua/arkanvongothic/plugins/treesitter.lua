return {
  "nvim-treesitter/nvim-treesitter",
  event = { "BufReadPre", "BufNewFile" },
  build = ":TSUpdate",
  dependencies = {
    "windwp/nvim-ts-autotag",
  },
  config = function()
    -- Importar el complemento nvim-treesitter
    local treesitter = require("nvim-treesitter.configs")

    -- Configurar treesitter
    treesitter.setup({ -- Habilitar resaltado de sintaxis
      highlight = {
        enable = true,
      },
      -- Habilitar sangría
      indent = { enable = true },
      -- Habilitar el etiquetado automático (con el complemento nvim-ts-autotag)
      autotag = {
        enable = true,
      },
      -- Asegúrese de que estos analizadores de idioma estén instalados
      ensure_installed = {
        "json",
        "javascript",
        "typescript",
        "tsx",
        "yaml",
        "html",
        "css",
        "prisma",
        "markdown",
        "markdown_inline",
        "svelte",
        "graphql",
        "bash",
        "lua",
        "vim",
        "dockerfile",
        "gitignore",
        "query",
        "vimdoc",
        "c",
      },
      incremental_selection = {
        enable = true,
        keymaps = {
          init_selection = "<C-y>",
          node_incremental = "<C-y>",
          scope_incremental = false,
          node_decremental = "<bs>",
        },
      },
    })
  end,
}
