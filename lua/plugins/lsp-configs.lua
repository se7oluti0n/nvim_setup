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
        ensure_installed = { "lua_ls", "clangd", "stylua", "clang-format"}
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
        cmd = {'clangd', '--background-index', '--clang-tidy', '--log=verbose'},
        init_options = {
          fallbackFlags = { '-std=c++17' },
        },
        capabilities = capabilities
      })
    end
  }
}
