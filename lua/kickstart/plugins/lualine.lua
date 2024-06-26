return {
  'nvim-lualine/lualine.nvim',
  config = function()
    local hide_in_width = function()
      return vim.fn.winwidth(0) > 80
    end

    local diagnostics = {
      'diagnostics',
      sources = { 'nvim_diagnostic' },
      sections = { 'error', 'warn' },
      symbols = { error = ' ', warn = ' ' },
      colored = false,
      update_in_insert = false,
      always_visible = true,
    }

    local diff = {
      'diff',
      colored = false,
      symbols = { added = ' ', modified = ' ', removed = ' ' }, -- changes diff symbols
      cond = hide_in_width,
    }

    local mode = {
      'mode',
      fmt = function(str)
        return '-- ' .. str .. ' --'
      end,
    }

    local filetype = {
      'filetype',
      icons_enabled = true,
    }

    local branch = {
      'branch',
      icons_enabled = true,
      icon = '',
    }

    local location = {
      'location',
      padding = 0,
    }

    require('lualine').setup {
      options = {
        icons_enabled = true,
        theme = 'onedark',
        component_separators = { left = '', right = '' },
        section_separators = { left = '', right = '' },
        disabled_filetypes = { 'alpha', 'dashboard', 'NvimTree', 'Outline' },
        always_divide_middle = true,
      },
      sections = {
        lualine_a = { branch, diagnostics },
        lualine_b = { mode },
        lualine_c = {},
        -- lualine_x = { "encoding", "fileformat", "filetype" },
        lualine_x = { diff, filetype },
        lualine_y = { location },
        lualine_z = {},
      },
      inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = { 'filename' },
        lualine_x = {},
        lualine_y = {},
        lualine_z = {},
      },
      tabline = {},
      extensions = {},
    }
  end,
}
