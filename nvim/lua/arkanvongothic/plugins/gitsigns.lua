return {
  "lewis6991/gitsigns.nvim",
  event = { "BufReadPre", "BufNewFile" },
  opts = {
    on_attach = function(bufnr)
      local gs = package.loaded.gitsigns

      local function map(mode, l, r, desc)
        vim.keymap.set(mode, l, r, { buffer = bufnr, desc = desc })
      end

      -- Navegación
      map("n", "]h", gs.next_hunk, "Siguiente trozo")
      map("n", "[h", gs.prev_hunk, "Anterior trozo")

      -- Acciones
      map("n", "<leader>hs", gs.stage_hunk, "Trozo de etapa")
      map("n", "<leader>hr", gs.reset_hunk, "Restablecer trozo")
      map("v", "<leader>hs", function()
        gs.stage_hunk({ vim.fn.line("."), vim.fn.line("v") })
      end, "Trozo de etapa")
      map("v", "<leader>hr", function()
        gs.reset_hunk({ vim.fn.line("."), vim.fn.line("v") })
      end, "Restablecer trozo")

      map("n", "<leader>hS", gs.stage_buffer, "Búfer de etapa")
      map("n", "<leader>hR", gs.reset_buffer, "Restablecer búfer")

      map("n", "<leader>hu", gs.undo_stage_hunk, "Deshacer trozo de etapa")

      map("n", "<leader>hp", gs.preview_hunk, "Vista previa del trozo")

      map("n", "<leader>hb", function()
        gs.blame_line({ full = true })
      end, "Línea de culpa")
      map("n", "<leader>hB", gs.toggle_current_line_blame, "Alternar línea de culpa")

      map("n", "<leader>hd", gs.diffthis, "Diferenciar esto")
      map("n", "<leader>hD", function()
        gs.diffthis("~")
      end, "Diferenciar esto ~")

      -- Objeto de texto
      map({ "o", "x" }, "ih", ":<C-U>Gitsigns select_hunk<CR>", "Gitsigns selecciona trozo")
    end,
  },
}
