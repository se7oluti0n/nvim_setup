return {
  'nvim-treesitter/nvim-treesitter',
  build = ':TSUpdate',
  dependencies = {
    "nvim-treesitter/nvim-treesitter-textobjects",
  },
  config = function()
    local treesitter_config = require("nvim-treesitter.configs")
    treesitter_config.setup({
      auto_install = true,
      ensure_installed = { "lua", "cpp", "c", "python", "javascript", "cmake" },
      highlight = { enable = true },
      indent = { enable = true }
    })
  end
}
