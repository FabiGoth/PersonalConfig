return {
  "rmagatti/auto-session",
  config = function()
    local auto_session = require("auto-session")

    auto_session.setup({
      auto_restore_enabled = false,
      auto_session_suppress_dirs = { "~/", "~/Dev/", "~/Downloads", "~/Documents", "~/Desktop/" },
    })

    local keymap = vim.keymap

    keymap.set("n", "<leader>wr", "<cmd>SessionRestore<CR>", { desc = "Restaurar sesión para cwd" }) -- Restaurar la última sesión del espacio de trabajo para el directorio actual
    keymap.set("n", "<leader>ws", "<cmd>SessionSave<CR>", { desc = "Guardar sesión para el directorio raíz de la sesión automática" }) -- Guardar la sesión del espacio de trabajo para el directorio de trabajo actual
  end,
}
