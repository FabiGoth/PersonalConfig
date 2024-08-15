return {
  "gbprod/substitute.nvim",
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    local substitute = require("substitute")

    substitute.setup()

    -- Configurar keymaps
    local keymap = vim.keymap -- Por concisión

    keymap.set("n", "s", substitute.operator, { desc = "Sustituir con movimiento" })
    keymap.set("n", "ss", substitute.line, { desc = "Línea sustituta" })
    keymap.set("n", "S", substitute.eol, { desc = "Sustituir hasta el final de la línea" })
    keymap.set("x", "s", substitute.visual, { desc = "Sustituir en modo visual" })
  end,
}
