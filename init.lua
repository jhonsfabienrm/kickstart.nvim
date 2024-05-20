require 'settings.options'
require 'settings.keymaps'
require 'settings.autocmds'

local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not vim.loop.fs_stat(lazypath) then
  local lazyrepo = 'https://github.com/folke/lazy.nvim.git'
  vim.fn.system { 'git', 'clone', '--filter=blob:none', '--branch=stable', lazyrepo, lazypath }
end ---@diagnostic disable-next-line: undefined-field
vim.opt.rtp:prepend(lazypath)
require('lazy').setup({
  require 'kickstart.plugins.debug',
  -- require 'kickstart.plugins.indent_line',
  -- require 'kickstart.plugins.lint',
  require 'kickstart.plugins.autopairs',
  require 'kickstart.plugins.nvim-tree',
  require 'kickstart.plugins.gitsigns', -- adds gitsigns recommend keymaps
  require 'kickstart.plugins.lualine',
  require 'custom.plugins.vim-sleuth',
  require 'custom.plugins.comment-nvim',
  require 'custom.plugins.which-key',
  require 'custom.plugins.telescope',
  require 'custom.plugins.lsp',
  require 'custom.plugins.conform',
  require 'custom.plugins.nvim-cmp',
  require 'custom.plugins.colorscheme',
  require 'custom.plugins.todo-comments',
  require 'custom.plugins.mini-nvim',
  require 'custom.plugins.treesitter',
  require 'custom.plugins.bufferline',
  require 'custom.plugins.toggleterm',
  require 'custom.plugins.dashboard',
  require 'custom.plugins.noice_nvim',
  require 'custom.plugins.old_vim_plugins',
  require 'custom.plugins.stdheader',
}, {
  ui = {
    -- If you are using a Nerd Font: set icons to an empty table which will use the
    -- default lazy.nvim defined Nerd Font icons, otherwise define a unicode icons table
    icons = vim.g.have_nerd_font and {} or {
      cmd = '⌘',
      config = '🛠',
      event = '📅',
      ft = '📂',
      init = '⚙',
      keys = '🗝',
      plugin = '🔌',
      runtime = '💻',
      require = '🌙',
      source = '📄',
      start = '🚀',
      task = '📌',
      lazy = '💤 ',
    },
  },
})
