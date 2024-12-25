return {
  -- Other plugins here...
  {
    "mg979/vim-visual-multi",
    branch = "master",
    config = function()
      -- Optional: Customize key mappings
      vim.g.VM_default_mappings = 0
      vim.g.VM_maps = {
        ["Find Under"] = "<C-n>",       -- Select next occurrence
        ["Find Subword Under"] = "<C-n>", -- Subword selection
      }
    end,
  },
}
