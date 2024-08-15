return {
  "goolord/alpha-nvim",
  event = "VimEnter",
  config = function()
    local alpha = require("alpha")
    local dashboard = require("alpha.themes.dashboard")

    -- Configurar cabecera
    dashboard.section.header.val = {
      "                                                     ",
      "  ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗ ",
      "  ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║ ",
      "  ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║ ",
      "  ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║ ",
      "  ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║ ",
      "  ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝ ",
      "                                                     ",
    }

    -- Configurar menú
    dashboard.section.buttons.val = {
      dashboard.button("e", "  > Archivo nuevo", "<cmd>ene<CR>"),
      dashboard.button("SPC ee", "  > Alternar explorador de archivos", "<cmd>NvimTreeToggle<CR>"),
      dashboard.button("SPC ff", "󰱼  > Buscar archivo", "<cmd>Telescope find_files<CR>"),
      dashboard.button("SPC fs", "  > Buscar palabra", "<cmd>Telescope live_grep<CR>"),
      dashboard.button("SPC wr", "󰁯  > Restaurar sesión (directorio actual)", "<cmd>SessionRestore<CR>"),
      dashboard.button("q", "  > Salir NVIM", "<cmd>qa<CR>"),
    }

    -- Enviar configuración a alpha
    alpha.setup(dashboard.opts)

    -- Deshabilitar el plegado en el búfer alfa
    vim.cmd([[autocmd FileType alpha setlocal nofoldenable]])
  end,
}
