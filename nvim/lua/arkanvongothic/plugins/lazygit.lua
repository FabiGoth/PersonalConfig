return {
  "kdheepak/lazygit.nvim",
  cmd = {
    "LazyGit",
    "LazyGitConfig",
    "LazyGitCurrentFile",
    "LazyGitFilter",
    "LazyGitFilterCurrentFile",
  },
  -- Opcional para decoración de borde de ventana flotante.
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  -- Se recomienda configurar la combinación de teclas para LazyGit
  -- con 'claves' para cargar el complemento cuando el comando se ejecuta
  -- por primera vez.
  keys = {
    { "<leader>lg", "<cmd>LazyGit<cr>", desc = "Abrir LazyGit" },
  },
}
