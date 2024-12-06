return
{
  {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.x',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
      require("telescope").setup({ file_ignore_patterns = { "./build/*", "./node_modules/*" } })
      local builtin = require("telescope.builtin")
      local utils = require("telescope.utils")
      local map = vim.keymap.set
      map('n', '<C-p>', builtin.find_files, {})
      map('n', '<leader>ff',
        function()
          builtin.find_files({ cwd = utils.buffer_dir() })
        end, {})
      map('n', '<leader>fg', builtin.live_grep, {})
      map('n', '<leader>fs', builtin.lsp_document_symbols, {})
      map('n', '<leader>fb', builtin.buffers, {})
      map('n', '<leader>fh', builtin.help_tags, {})

      map("n", "<leader>ma", "<cmd>Telescope marks<CR>", { desc = "telescope find marks" })
      map("n", "<leader>fo", "<cmd>Telescope oldfiles<CR>", { desc = "telescope find oldfiles" })
      map("n", "<leader>fz", "<cmd>Telescope current_buffer_fuzzy_find<CR>",
        { desc = "telescope find in current buffer" })
      map("n", "<leader>cm", "<cmd>Telescope git_commits<CR>", { desc = "telescope git commits" })
      map("n", "<leader>gt", "<cmd>Telescope git_status<CR>", { desc = "telescope git status" })
      map("n", "<leader>pt", "<cmd>Telescope terms<CR>", { desc = "telescope pick hidden term" })
      map("n", "<leader>fa", "<cmd>Telescope find_files follow=true no_ignore=true hidden=true<CR>",
        { desc = "telescope find all files" })
    end
  },
  {
    "nvim-telescope/telescope-ui-select.nvim",
    config = function()
      require("telescope").setup {
        extensions = {
          ["ui-select"] = {
            require("telescope.themes").get_dropdown {
              -- even more opts
            }

          }
        }
      }
      require("telescope").load_extension("ui-select")
    end
  }
}
