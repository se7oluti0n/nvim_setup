return {
  "github/copilot.vim",
  config = function()
    -- Check if Copilot is available
    vim.g.copilot_no_tab_map = true -- Disable default Tab mapping

    -- Map Ctrl-J to accept Copilot suggestions
    vim.api.nvim_set_keymap("i", "<C-j>", 'copilot#Accept("<CR>")', { silent = true, expr = true })
  end
}
