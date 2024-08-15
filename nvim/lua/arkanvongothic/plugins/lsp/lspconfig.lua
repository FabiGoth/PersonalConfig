return {
  "neovim/nvim-lspconfig",
  event = { "BufReadPre", "BufNewFile" },
  dependencies = {
    "hrsh7th/cmp-nvim-lsp",
    { "antosha417/nvim-lsp-file-operations", config = true },
    { "folke/neodev.nvim", opts = {} },
},
config = function()
  -- Importar complemento lspconfig
  local lspconfig = require("lspconfig")

  -- Importar complemento mason_lspconfig
  local mason_lspconfig = require("mason-lspconfig")

  -- Importar complemento cmp-nvim-lsp
  local cmp_nvim_lsp = require("cmp_nvim_lsp")

  local keymap = vim.keymap -- Para ser conciso

  vim.api.nvim_create_autocmd("LspAttach", {
      group = vim.api.nvim_create_augroup("UserLspConfig", {}),
      callback = function(ev)
        -- Asignaciones locales de búfer.
        -- Consulte `:help vim.lsp.*` para obtener documentación sobre cualquiera de las funciones siguientes
        local opts = { buffer = ev.buf, silent = true }

  --local opts = { noremap = true, silent = true }
  --local on_attach = function(client, bufnr)
  --  opts.buffer = bufnr

    -- Configurar atajos
    opts.desc = "Mostrar referencias LSP"
    keymap.set("n", "gR", "<cmd>Telescope lsp_references<CR>", opts) -- Muestra definiciones y referencias

    opts.desc = "Ir a las declaraciones"
    keymap.set("n", "gD", vim.lsp.buf.declaration, opts) -- Ir a la declaración

    opts.desc = "Mostrar definiciones LSP"
    keymap.set("n", "gd", "<cmd>Telescope lsp_definitions<CR>", opts) -- Muestra definiciones lsp

    opts.desc = "Muestra implementaciones LSP"
    keymap.set("n", "gi", "<cmd>Telescope lsp_implementations<CR>", opts) -- Muestra implementaciones lsp

    opts.desc = "Muestra tipos de definiciones LSP"
    keymap.set("n", "gt", "<cmd>Telescope lsp_type_definitions<CR>", opts) -- Muestra tipos de definiciones lsp

    opts.desc = "Ver acciones de código disponibles"
    keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, opts) -- Ver acciones de código disponibles, en modo visual se aplicará a la selección

    opts.desc = "Cambio de nombre inteligente"
    keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts) -- Cambio de nombre inteligente

    opts.desc = "Mostrar diagnóstico de búfer"
    keymap.set("n", "<leader>D", "<cmd>Telescope diagnostics bufnr=0<CR>", opts) -- Mostrar diagnóstico para el archivo

    opts.desc = "Mostrar diagnóstico de linea"
    keymap.set("n", "<leader>d", vim.diagnostic.open_float, opts) -- Mostrar diagnóstico de linea

    opts.desc = "Ir al diagnóstico anterior"
    keymap.set("n", "[d", vim.diagnostic.goto_prev, opts) -- Saltar al diagnóstico anterior en el búfer

    opts.desc = "Ir al siguiente diagnóstico"
    keymap.set("n", "]d", vim.diagnostic.goto_next, opts) -- Saltar al siguiente diagnóstico en el búfer

    opts.desc = "Mostrar documentación de lo que está debajo del cursor"
    keymap.set("n", "K", vim.lsp.buf.hover, opts) -- Mostrar documentación de lo que está debajo del cursor

    opts.desc = "Reiniciar LSP"
    keymap.set("n", "<leader>rs", ":LspRestart<CR>", opts) -- Mapeo para reiniciar lsp si es necesario
  end,
})

    -- Utilizado para habilitar el autocompletado (asignar a cada configuración del servidor lsp)
    local capabilities = cmp_nvim_lsp.default_capabilities()

    -- Cambiar los símbolos de diagnóstico en la columna de signos (canalón) 
    -- (no en el video nvim de youtube)
    local signs = { Error = " ", Warn = " ", Hint = "󰠠 ", Info = " " }
    for type, icon in pairs(signs) do
      local hl = "DiagnosticSign" .. type
      vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" })
    end

     mason_lspconfig.setup_handlers({
      -- default handler for installed servers
      function(server_name)
        lspconfig[server_name].setup({
          capabilities = capabilities,
        })
      end,
      ["clangd"] = function()
        --Configurar servidor clangd
        lspconfig["clangd"].setup({
          capabilities = capabilities,
          filetypes = { "c", "cpp", "objc", "objcpp", "cuda", "proto" },
        })
      end,
    ["html"] = function()
      -- Configurar servidor html
      lspconfig["html"].setup({
        capabilities = capabilities,
        -- on_attach = on_attach,
      })
    end,
    --[[["tsserver"] = function()
    -- Configurar servidor typescript con complementos
    lspconfig["tsserver"].setup({
      capabilities = capabilities,
      -- on_attach = on_attach,
    })
  end,]]--
    ["cssls"] = function()
    -- Configurar servidor css
    lspconfig["cssls"].setup({
      capabilities = capabilities,
      --on_attach = on_attach,
    })
  end,
    --[[["tailwindcss"] = function()
    -- Configurar servidor tailwindcss
    lspconfig["tailwindcss"].setup({
      capabilities = capabilities,
      --on_attach = on_attach,
    })
  end,
    ["emmet_ls"] = function()
    -- Configurar servidor de lenguaje emmet
    lspconfig["emmet_ls"].setup({
      capabilities = capabilities,
      filetypes = { "html", "typescriptreact", "javascriptreact", "css", "sass", "scss", "less", "svelte" },
    })
    end,]]--
    ["pyright"] = function()
    -- Configurar servidor pyright
    lspconfig["pyright"].setup({
      capabilities = capabilities,
      --on_attach = on_attach,
    })
  end,
    ["lua_ls"] = function()
    -- Configurar servidor lua (con configuraciones especiales)
    lspconfig["lua_ls"].setup({
      capabilities = capabilities,
      settings = {
        Lua = {
          -- Hacer que el servidor de idiomas reconozca "vim" global
          diagnostics = {
            globals = { "vim" },
            },
            completion = {
              callSnippet = "Replace",
            --workspace = {
              -- Hacer que el servidor de idiomas sea consciente de los archivos de tiempo de ejecución
            --  library = {
            --    [vim.fn.expand("$VIMRUNTIME/lua")] = true,
            --    [vim.fn.stdpath("config") .. "/lua"] = true,
              },
            },
          },
      })
    end,
  })
  end,
}
