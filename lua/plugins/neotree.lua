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
      close_if_last_window = true, -- Close Neo-tree if it is the last window,
      windows = {
        position = "left",
      },
      filesystem = {
        follow_current_file = true, -- Highlight the current file
      }
    })
    vim.keymap.set('n', '<C-b>', "<cmd>Neotree toggle<CR>", { noremap = true, silent = true })
  end
}
