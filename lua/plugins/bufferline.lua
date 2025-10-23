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

      -- Shows a separator on the right side
      always_show_bufferline = true,

      -- If you REALLY want to manage native tabs instead of buffers
      -- mode = "tabs",
      diagnostics_indicator = function(count, level)
        local icon = level:match("error") and " " or " "
        return " " .. icon .. count
      end,

      numbers = function(opts)
        return string.format('%s|%s', opts.ordinal, opts.raise(opts.id))
      end,
    },
    highlights = {
      -- This is where you can make it stand out
      buffer_selected = {
        fg = '#FFFFFF', -- White text
        -- bg = '#51678d', -- A distinct blue background
        bold = true,
      },
      -- Make the background of the whole bar different
      background = {
        bg = '#1e222a', -- A darker, separate background
      },
    },
  }

}
