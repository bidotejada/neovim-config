function ColorMyPencils(color)
  color = color or 'everforest' -- rose-pine, everforest, material, tokyonight
  vim.cmd.colorscheme(color)
end

return {
  {
    'folke/tokyonight.nvim',
    config = function()
      require('tokyonight').setup {
        -- your configuration comes here
        -- or leave it empty to use the default settings
        style = 'storm', -- The theme comes in three styles, `storm`, `moon`, a darker variant `night` and `day`
        terminal_colors = true, -- Configure the colors used when opening a `:terminal` in Neovim
        styles = {
          -- Background styles. Can be "dark", "transparent" or "normal"
          sidebars = 'dark', -- style for sidebars, see below
          floats = 'dark', -- style for floating windows
        },
      }
    end,
  },
  {
    'neanias/everforest-nvim',
    version = false,
  },
  { 'marko-cerovac/material.nvim' },
  {
    'rose-pine/neovim',
    name = 'rose-pine',
    config = function()
      vim.cmd 'colorscheme rose-pine'

      ColorMyPencils()
    end,
  },
}
