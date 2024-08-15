return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  init = function()
    vim.o.timeout = true
    vim.o.timeoutlen = 500
  end,
  opts = {
    -- Tu configuración viene aquí
    -- o déjelo vacío para usar la configuración predeterminada,
    -- consulte la sección de configuración a continuación
  },
}
