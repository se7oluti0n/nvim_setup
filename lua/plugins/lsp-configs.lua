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
        ensure_installed = { "lua_ls", "clangd", "pyright"}
    })
    end
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      local lspconfig = require("lspconfig")
      local capabilities = require('cmp_nvim_lsp').default_capabilities()

      lspconfig.lua_ls.setup({
        capabilities = capabilities
      })

      lspconfig.clangd.setup({
        cmd = {'clangd', '--background-index', '--clang-tidy', '--log=verbose',
                "--header-insertion=never",
                "--function-arg-placeholders",
                "--query-driver=/usr/bin/c++",
                "--all-scopes-completion",
                "--completion-style=detailed"},
        init_options = {
          fallbackFlags = { '-std=c++17' },
        },
        capabilities = capabilities
      })

      lspconfig.pyright.setup({
        cmd = {"pyright-langserver", "--stdio"},
        filetypes = {"python"},
        capabilities = capabilities
      })
    end
  }
}
