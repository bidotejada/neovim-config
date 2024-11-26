vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.g.have_nerd_font = true

require 'core.options'
require 'core.keymaps'
require 'core.snippets'

local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = 'https://github.com/folke/lazy.nvim.git'
  local out = vim.fn.system { 'git', 'clone', '--filter=blob:none', '--branch=stable', lazyrepo, lazypath }
  if vim.v.shell_error ~= 0 then
    error('Error cloning lazy.nvim:\n' .. out)
  end
end ---@diagnostic disable-next-line: undefined-field
vim.opt.rtp:prepend(lazypath)

require('lazy').setup({
  require 'plugins.autocompletion',
  require 'plugins.autoformat',
  require 'plugins.autopairs',
  require 'plugins.bufferline',
  require 'plugins.colorscheme',
  require 'plugins.comment',
  require 'plugins.gitsigns', -- adds gitsigns recommend keymaps
  require 'plugins.indent_line',
  require 'plugins.lsp',
  require 'plugins.misc',
  require 'plugins.neo-tree',
  require 'plugins.telescope',
  require 'plugins.treesitter',
  require 'plugins.which-key',
}, {
  ui = {
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

-- The line beneath this is called `modeline`. See `:help modeline`
-- vim: ts=2 sts=2 sw=2 et
