return
{
  {
    'nvim-telescope/telescope-fzf-native.nvim',
    build = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release'
  },
  {
    'nvim-telescope/telescope.nvim',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
      require("telescope").setup({
        file_ignore_patterns = { "./build/*", "./node_modules/*" },
        extensions = {
          fzf = {
            fuzzy = true,             -- false will only do exact matching
            override_generic_sorter = true, -- override the generic sorter
            override_file_sorter = true, -- override the file sorter
            case_mode = "smart_case", -- or "ignore_case" or "respect_case"
            -- the default case_mode is "smart_case"
          }
        }
      })
      require('telescope').load_extension('fzf')
      local builtin = require("telescope.builtin")
      -- local utils = require("telescope.utils")
      local map = vim.keymap.set
      map('n', '<C-p>', builtin.find_files, {})
      map('n', '<leader>fp',
        function()
          builtin.find_files({ search_dirs = { "~/.config/nvim" } })
        end, { desc = "find nvim configuration" })
      -- map('n', '<leader>fg',
      --   function()
      --     builtin.find_files({ cwd = utils.buffer_dir() })
      --   end, {})
      map("n", "<leader>fa", "<cmd>Telescope find_files follow=true no_ignore=true hidden=true<CR>",
        { desc = "telescope find all files" })
      map("n", "<leader>fz", "<cmd>Telescope current_buffer_fuzzy_find<CR>",
        { desc = "telescope find in current buffer" })
      map("n", "<leader>fo", "<cmd>Telescope oldfiles<CR>", { desc = "telescope find oldfiles" })
      map('n', '<leader>fg', builtin.live_grep, { desc = "search for string in files as you type" })
      map('n', '<leader>ff', builtin.grep_string, { desc = "Searches for the string under your cursor" })

      map('n', '<leader>fs', function()
        builtin.lsp_document_symbols({ symbols = { "Class", "Function", "Method", "Constructor", "Interface" } })
      end, {})

      map('n', '<leader>ft', function()
        builtin.treesitter({ symbols = { "Class", "Function", "Method", "Constructor", "Interface" } })
      end, {})

      map('n', '<leader>fb', builtin.buffers, {})
      map('n', '<leader>fe', builtin.diagnostics, {})

      map("n", "<leader>ma", "<cmd>Telescope marks<CR>", { desc = "telescope find marks" })
      map("n", "<leader>cm", "<cmd>Telescope git_commits<CR>", { desc = "telescope git commits" })
      map("n", "<leader>gt", "<cmd>Telescope git_status<CR>", { desc = "telescope git status" })
      map("n", "<leader>pt", "<cmd>Telescope terms<CR>", { desc = "telescope pick hidden term" })
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
        },
        defaults = {
          file_ignore_patterns = {
            "node_modules",
            ".build",
            ".cache"
          },
        },
        pickers = {
          lsp_document_symbols = {
            symbol_width = 50,
          }
        }
      }
      require("telescope").load_extension("ui-select")
    end
  },

}
