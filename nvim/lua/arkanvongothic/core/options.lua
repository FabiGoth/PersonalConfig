vim.cmd("let g:netrw_liststyle = 3")

local opt = vim.opt -- Para conciso

-- Numeros de línea
opt.relativenumber = true
opt.number = true

-- Tabulación y sangría
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true

-- Ajuste de línea
opt.wrap = false

-- Configuración de búsqueda
opt.ignorecase = true
opt.smartcase = true

-- Línea del cursor
opt.cursorline = true

-- Apariencia
opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "yes"

-- Retroceso
opt.backspace = "indent,eol,start"

-- Portapapeles (Clipboard)
opt.clipboard:append("unnamedplus")

-- División ventanas
opt.splitright = true
opt.splitbelow = true

-- Desactivar el archivo de intercambio
opt.swapfile = false
