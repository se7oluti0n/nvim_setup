return {
  'nvim-telescope/telescope.nvim', tag = '0.1.x',
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = function()
    require("telescope").setup({file_ignore_patterns = {"./build/*", "./node_modules/*"}})
    local builtin = require("telescope.builtin")
    local utils = require("telescope.utils")
    vim.keymap.set('n', '<C-p>', builtin.find_files, {})
    vim.keymap.set('n', '<leader>ff',
      function() 
        builtin.find_files({cwd=utils.buffer_dir()})
      end , {})
    vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
    vim.keymap.set('n', '<leader>ff', builtin.lsp_document_symbols, {})
    vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
    vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
  end
}
