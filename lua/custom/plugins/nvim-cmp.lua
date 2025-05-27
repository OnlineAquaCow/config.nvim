return {
  'hrsh7th/nvim-cmp',
  dependencies = {
    'hrsh7th/cmp-nvim-lsp', -- LSP source
    'L3MON4D3/LuaSnip', -- snippet engine (optional but recommended)
    'saadparwaiz1/cmp_luasnip', -- LuaSnip source
    'hrsh7th/cmp-buffer', -- buffer completion
    'hrsh7th/cmp-path', -- path completion
    'dcampos/cmp-emmet-vim',
  },
  config = function()
    local cmp = require 'cmp'
    cmp.setup {
      filetype = { 'php', 'blade', 'blade.php' },
      snippet = {
        expand = function(args)
          require('luasnip').lsp_expand(args.body)
        end,
      },
      mapping = cmp.mapping.preset.insert {
        ['<C-Space>'] = cmp.mapping.complete(),
        ['<CR>'] = cmp.mapping.confirm { select = true },
      },
      sources = cmp.config.sources {
        { name = 'nvim_lsp' },
        { name = 'luasnip' },
        { name = 'buffer' },
        { name = 'path' },
        { name = 'emmet' },
      },
    }
  end,
}
