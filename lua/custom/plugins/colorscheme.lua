return {
  {
    'navarasu/onedark.nvim',
    config = function()
      -- Lua
      require('onedark').setup {
        -- Main options --
        transparent = true, -- Show/hide background
        style = 'darker', -- Default theme style. Choose between 'dark', 'darker', 'cool', 'deep', 'warm', 'warmer' and 'light'
        code_style = {
          comments = 'italic',
          keywords = 'bold',
          functions = 'bold',
          strings = 'italic,bold',
          variables = 'none',
        },
      }
      require('onedark').load()
    end,
  },
}
