-- Standalone plugins with less than 10 lines of config go here
return {
  {
    -- Powerful Git integration for Vim
    'tpope/vim-fugitive',
    config = function()
      -- Git Status
      vim.api.nvim_set_keymap('n', '<leader>gs', ':Git<CR>', { noremap = true, silent = true })
      -- Git Commit
      vim.api.nvim_set_keymap('n', '<leader>gc', ':Git commit -m ""', { noremap = true, silent = true })
      -- Git Push
      vim.api.nvim_set_keymap('n', '<leader>gp', ':Git push<CR>', { noremap = true, silent = true })

      -- Git Pull
      vim.api.nvim_set_keymap('n', '<leader>gl', ':Git pull --rebase<CR>', { noremap = true, silent = true })

      -- Git Fetch
      vim.api.nvim_set_keymap('n', '<leader>gf', ':Git fetch<CR>', { noremap = true, silent = true })
    end,
  },
  {
    -- GitHub integration for vim-fugitive
    'tpope/vim-rhubarb',
  },
  {
    -- High-performance color highlighter
    'norcalli/nvim-colorizer.lua',
    config = function()
      require('colorizer').setup()
    end,
  },
}
