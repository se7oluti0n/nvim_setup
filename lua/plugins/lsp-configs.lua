return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end
  },
  {
    "williamboman/mason-lspconfig.nvim",

    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = { "lua_ls", "clangd", "pyright" }
      })
    end
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      -- local lspconfig = require("lspconfig")
      local capabilities = require('cmp_nvim_lsp').default_capabilities()

      vim.lsp.config("lua_ls", {
        capabilities = capabilities
      })

      vim.lsp.config("clangd", {
        cmd = { 'clangd', '--background-index',
          '--limit-results=30',
          '--clang-tidy',
          '--log=verbose',
          "--header-insertion=never",
          "--header-insertion-decorators=0",
          "--function-arg-placeholders",
          "--query-driver=/usr/bin/c++",
          "--pch-storage=disk",
          "--all-scopes-completion",
          "--completion-style=detailed" },
        init_options = {
          fallbackFlags = { '-std=c++17' },
        },
        capabilities = capabilities
      })

      vim.lsp.config("pyright", {
        cmd = { "pyright-langserver", "--stdio" },
        filetypes = { "python" },
        capabilities = capabilities
      })

      -- lspconfig.qmlls.setup({
      --   cmd = { "/home/manh/Qt/6.8.1/gcc_64/bin/qmlls" }, -- Update this path to the qmlls binary
      --   filetypes = { "qml" },
      --   root_dir = require('lspconfig.util').root_pattern('.git', '*.pro', '*.pri', 'CMakeLists.txt'),
      --   on_attach = function(client, bufnr)
      --     -- Add custom keybindings or settings here if needed
      --     print("QML LSP attached")
      --   end,
      -- })

      local map = vim.keymap.set
      map("n", "K", vim.lsp.buf.hover, {})
      map("n", "<M-o>", "<cmd>LspClangdSwitchSourceHeader<CR>", {})
      -- map("n", "<M-o>", vim.lsp.config.switch_source_header, {})
      map("n", "gD", vim.lsp.buf.declaration, {})
      map("n", "gd", vim.lsp.buf.definition, {})
      map("n", "gi", vim.lsp.buf.implementation, {})
      map("n", "<leader>D", vim.lsp.buf.type_definition, {})
      map("n", "<leader>e", function()
        vim.diagnostic.open_float(0, { scope = "line" })
      end, {})
      map({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {})
      map("n", "gr", vim.lsp.buf.references, { noremap = true, silent = true })
      map("n", "gR", vim.lsp.buf.rename, {})
    end
  }
}
