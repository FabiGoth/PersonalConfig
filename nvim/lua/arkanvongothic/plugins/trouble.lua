return {
  "folke/trouble.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons", "folke/todo-comments.nvim" },
  opts = {
    focus = true,
  },
  cmd = "Trouble",
  keys = {
    { "<leader>xw", "<cmd>Trouble diagnostics toggle<CR>", desc = "Abrir diagnóstico del espacio de trabajo de problemas" },
    { "<leader>xd", "<cmd>Trouble diagnostics toggle filter.buf=0<CR>", desc = "Abrir diagnóstico de documentos de problemas" },
    { "<leader>xq", "<cmd>Trouble quickfix toggle<CR>", desc = "Abrir lista de solución rápida de problemas" },
    { "<leader>xl", "<cmd>Trouble loclist toggle<CR>", desc = "Abrir lista de ubicaciones de problemas" },
    { "<leader>xt", "<cmd>Trouble todo toggle<CR>", desc = "Abrir todos en problemas" },
  },
}
