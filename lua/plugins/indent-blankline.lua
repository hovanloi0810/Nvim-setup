return {
  'lukas-reineke/indent-blankline.nvim',
  main = 'ibl',
  opts = {
    indent = {
      char = '┊',
    },
    scope = {
      show_start = false,
      show_end = false,
      show_exact_scope = false,
    },
    exclude = {
      filetypes = {
        'help',
        'startify',
        'dashboard',
        'packer',
        'neogitstatus',
        'NvimTree',
        'Trouble',
      },
    },
  },
  commit = '29be0919b91fb59eca9e90690d76014233392bef',
  config = function()
    local highlight = {
      'RainbowRed',
      'RainbowYellow',
      'RainbowBlue',
      'RainbowOrange',
      'RainbowGreen',
      'RainbowViolet',
      'RainbowCyan',
    }
    local hooks = require 'ibl.hooks'
    -- create the highlight groups in the highlight setup hook, so they are reset
    -- every time the colorscheme changes
    hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
      vim.api.nvim_set_hl(0, 'RainbowRed', { fg = '#E06C75' })
      vim.api.nvim_set_hl(0, 'RainbowYellow', { fg = '#d79921' })
      vim.api.nvim_set_hl(0, 'RainbowBlue', { fg = '#83a598' })
      vim.api.nvim_set_hl(0, 'RainbowOrange', { fg = '#fe8019' })
      vim.api.nvim_set_hl(0, 'RainbowGreen', { fg = '#98971a' })
      vim.api.nvim_set_hl(0, 'RainbowViolet', { fg = '#d3869b' })
      vim.api.nvim_set_hl(0, 'RainbowCyan', { fg = '#458588' })
    end)

    vim.g.rainbow_delimiters = { highlight = highlight }
    require('ibl').setup { scope = { highlight = highlight } }

    hooks.register(hooks.type.SCOPE_HIGHLIGHT, hooks.builtin.scope_highlight_from_extmark)
  end,
}
