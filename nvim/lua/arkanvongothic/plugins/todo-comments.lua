return {
  "folke/todo-comments.nvim",
  event = { "BufReadPre", "BufNewFile" },
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
    local todo_comments = require("todo-comments")

    -- Configurar keymaps
    local keymap = vim.keymap -- Por concisión

    keymap.set("n", "]t", function()
      todo_comments.jump_next()
    end, { desc = "Siguiente para comentar" })

    keymap.set("n", "[t", function()
      todo_comments.jump_next()
    end, { desc = "Anterior para comentar" })

    todo_comments.setup()
  end,
}
