return {
  'nvim-treesitter/nvim-treesitter',
  build = ':TSUpdate',
  config = function()
    local treesitter_config = require("nvim-treesitter.configs")
    treesitter_config.setup({
      auto_install = true,
      ensure_installed = {"lua", "cpp", "c", "python", "javascript"},
      highlight = { enable = true },
      indent = { enable = true}
    })
  end
}
