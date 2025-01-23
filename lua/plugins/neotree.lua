return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
    "MunifTanjim/nui.nvim",
    -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
  },
  config = function()
    require("neo-tree").setup({
      sources = {
        "filesystem",
        "buffers",
        "git_status",
        "document_symbols", -- Add this to enable document symbols
      },
      hijack_cursor = false,
      source_selector = {
        winbar = true, -- Display source selector in the window bar
        statusline = false,
      },
      close_if_last_window = true, -- Close Neo-tree if it is the last window,
      windows = {
        position = "left",
      },
      filesystem = {
        follow_current_file = true, -- Highlight the current file
      }
    })
    vim.keymap.set('n', '<C-b>', "<cmd>Neotree toggle reveal_force_cwd<CR>", { noremap = true, silent = true })
    vim.keymap.set('n', '<leader>ds', "<cmd>Neotree float source=document_symbols<CR>", { noremap = true, silent = true })
  end
}
