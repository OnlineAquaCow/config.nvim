return {
  {
    'catppuccin/nvim',
    name = 'catppuccin',
    priority = 2000,
    config = function()
      vim.cmd.colorscheme 'catppuccin-macchiato'
    end,
  },
}
