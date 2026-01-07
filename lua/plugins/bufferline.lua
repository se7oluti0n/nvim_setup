return {
  'akinsho/bufferline.nvim',
  version = "*",
  dependencies = {
    -- This is optional, but adds file type icons
    'nvim-tree/nvim-web-devicons'
  },
  opts = {
    options = {
      -- Adds angled separators ("slant")
      -- Other options: "arrow", "wave", "rounded"
      separator_style = "slant",

      -- Change the indicator to an underline
      indicator = {
        style = 'underline'
      },
      -- Shows a separator on the right side
      -- always_show_bufferline = true,

      -- If you REALLY want to manage native tabs instead of buffers
      mode = "tabs",

      --- Dianotics setting
      -- diagnostics = "nvim_lsp",
      -- diagnostics_indicator = function(count, level)
      --   local icon = level:match("error") and " " or " "
      --   return " " .. icon .. count
      -- end,

      --- Show tab number
      numbers = function(opts)
        return string.format("%s", opts.ordinal)
      end,

      --- Hover on tab to close or select
      hover = {
        enabled = true,
        delay = 200,
        reveal = { 'close' }
      }
    },
    highlights = {
      -- This is where you can make it stand out
      buffer_selected = {
        fg = '#FF3E00', -- White text
        -- fg = '#06E5F9', -- Cyan text
        -- bg = '#51678d', -- A distinct blue background
        bold = true,
      },
      -- Make the background of the whole bar different
      -- background = {
      --   bg = '#1e222a', -- A darker, separate background
      -- },

      -- Set the color of the indicator for the *selected* (active) tab
      -- indicator_selected = {
      --   guifg = '#FF0000' -- You can use 'Red' or any hex code
      -- }
    },
  },

}
