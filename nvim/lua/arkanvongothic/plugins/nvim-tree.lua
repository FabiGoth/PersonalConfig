return {
  "nvim-tree/nvim-tree.lua",
  dependencies = "nvim-tree/nvim-web-devicons",
  config = function()
    local nvimtree = require("nvim-tree")

    -- Configuraciones recomendadas por la documentación de nvim-tree
    vim.g.loaded_netrw = 1
    vim.g.loaded_netrwPlugin = 1

    nvimtree.setup({
      view = {
        width = 35,
        relativenumber = true,
      },
      -- Cambiar los iconos de las flechas de la carpeta
      renderer = {
        indent_markers = {
          enable = true,
        },
        icons = {
          glyphs = {
            folder = {
              arrow_closed = "", -- Flecha cuando la carpeta está cerrada
              arrow_open = "", -- Flecha cuando la carpeta está abierto
            },
          },
        },
      },
      -- Deshabilite window_picker para 
      -- que el explorador funcione bien con 
      -- los divisiones de ventanas
      actions = {
        open_file = {
          window_picker = {
            enable = false,
          },
        },
      },
      filters = {
        custom = { ".DS_Store" },
      },
      git = {
        ignore = false,
      },
    })

    -- set keymaps
    local keymap = vim.keymap -- Para ser conciso

    keymap.set("n", "<leader>ee", "<cmd>NvimTreeToggle<CR>", { desc = "Alternar explorador de ficheros" })
    keymap.set("n", "<leader>ef", "<cmd>NvimTreeFindFileToggle<CR>", { desc = "Alternar explorador de ficheros en el fichero actual" })
    keymap.set("n", "<leader>ec", "<cmd>NvimTreeCollapse<CR>", { desc = "Colapsar el explorador de ficheros" })
    keymap.set("n", "<leader>er", "<cmd>NvimTreeRefresh<CR>", { desc = "Refrescar el explorador de ficheros" })
  end
}
