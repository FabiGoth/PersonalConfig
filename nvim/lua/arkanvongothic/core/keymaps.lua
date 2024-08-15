vim.g.mapleader = " "

local keymap = vim.keymap -- Para ser conciso

-- General keymaps

keymap.set("i", "jk", "<ESC>", { desc = "Salida del modo INSERTAR con jk" })

keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Borrar la búsqueda más destacada" })

-- Incremento/decremento numeros
keymap.set("n", "<leader>+", "<C-a>", { desc = "Incrementa numero" })
keymap.set("n", "<leader>-", "<C-x>", { desc = "Descrementa numero" })

-- Manejo de las ventanas
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Divide la ventana verticalmente" })
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Divide la ventana horizontalmente" })
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Divide la ventana al mismo tamaño" })
keymap.set("n", "<leader>sx", ":close<CR>", { desc = "Cierra la ventana dividida actual" })

keymap.set("n", "<leader>to", ":tabnew<CR>", { desc = "Abre nueva pestaña" })
keymap.set("n", "<leader>tx", ":tabclose<CR>", { desc = "Cierra la pestaña actual" })
keymap.set("n", "<leader>tn", ":tabn<CR>", { desc = "Desplaza a la pestaña siguiente" })
keymap.set("n", "<leader>tp", ":tabp<CR>", { desc = "Retrocede a la pestaña anterior" })
keymap.set("n", "<leader>tf", ":tabnew %<CR>", { desc = "Abre el búfer actual en una nueva pestaña" })
