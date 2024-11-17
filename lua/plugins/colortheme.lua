return {
  {
    'ellisonleao/gruvbox.nvim',
    lazy = false, -- Load it during startup
    priority = 1000, -- Ensure it loads before other plugins
    config = function()
      vim.o.background = 'dark' -- Set the background to "dark" or "light"
      require('gruvbox').setup {
        contrast = 'hard', -- Options: "soft", "medium", "hard"
        palette_overrides = {
          -- Customize Gruvbox palette here if needed
        },
        overrides = {
          -- Override highlight groups here if needed
        },
      }
      vim.cmd 'colorscheme gruvbox' -- Set Gruvbox as the colorscheme
    end,
  },
}
