return {
  "windwp/nvim-autopairs",
  event = { "InsertEnter" },
  dependencies = {
    "hrsh7th/nvim-cmp",
  },
  config = function()
    -- Importar nvim-autopairs
    local autopairs = require("nvim-autopairs")

    -- Configurar autopairs
    autopairs.setup({
      check_ts = true, -- Habilitar treesitter
      ts_config = {
        lua = { "string" }, -- No agregue pares en los nodos de treesitter de cadena lua
        javascript = { "template_string" }, -- No agregue pares en javascript template_string nodos de treesitter
        java = false, -- No revises treesitter en java
      },
    })

    -- Importar la funcionalidad de finalización de nvim-autopairs
    local cmp_autopairs = require("nvim-autopairs.completion.cmp")

    -- Importar complemento nvim-cmp (complemento de terminaciones)
    local cmp = require("cmp")

    -- Hacer que los pares automáticos y la finalización funcionen juntos
    cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done())
  end,
}
