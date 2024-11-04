return {
  'nvim-lualine/lualine.nvim',
  config = function()
    local mode = {
      'mode',
      fmt = function(str)
        return ' ' .. str
        -- return ' ' .. str:sub(1, 1) -- displays only the first character of the mode
      end,
    }

    local filename = {
      'filename',
      file_status = true, -- displays file status (readonly status, modified status)
      path = 0, -- 0 = just filename, 1 = relative path, 2 = absolute path
    }

    local hide_in_width = function()
      return vim.fn.winwidth(0) > 100
    end

    local colors = {
      bg       = '#282828',
      fg       = '#d4be98',
      yellow   = '#d8a657',
      aqua     = '#89b482',
      green    = '#a9b665',
      orange   = '#e78a4e',
      purple   = '#d3869b',
      blue     = '#7daea3',
      red      = '#ea6962',
    }

    local diagnostics = {
      'diagnostics',
      sources = { 'nvim_diagnostic' },
      sections = { 'error', 'warn' },
      symbols = { error = ' ', warn = ' ', info = ' ', hint = ' ' },
      colored = false,
      update_in_insert = false,
      always_visible = false,
      cond = hide_in_width,
    }

    local diff = {
      'diff',
      colored = true,
	  color = { bg = colors.bg },
      symbols = { added = ' ', modified = ' ', removed = ' ' }, -- changes diff symbols
      cond = hide_in_width,
	  separator = { left = "", right = "" },
    }

    local filetype = {
        "filetype",
        icons_enabled = true,
    }

    local location = {
        "location",
        padding = 0,
    }

    local vim_icons = {
        function()
            return ""
        end,
        separator = { left = "" },
    }

    local modes = {
        "mode",
        separator = { left = "", right = "" },
    }

    local branch = {
        "branch",
        icon = "",
        color = { bg = colors.bg, fg = colors.fg },
        separator = { left = "", right = "" },
    }

    require('lualine').setup {
      options = {
        icons_enabled = true,
        theme = 'gruvbox-material', -- Set theme based on environment variable
        -- Some useful glyphs:
        -- https://www.nerdfonts.com/cheat-sheet
        --          
        section_separators = { left = '', right = '' },
        component_separators = { left = '', right = '' },
        disabled_filetypes = { 'alpha', 'neo-tree' },
        always_divide_middle = true,
      },
      -- sections = {
      --   lualine_a = { mode },
      --   lualine_b = { 'branch' },
      --   lualine_c = { filename },
      --   lualine_x = { diagnostics, diff, { 'encoding', cond = hide_in_width }, { 'filetype', cond = hide_in_width } },
      --   lualine_y = { 'location' },
      --   lualine_z = { 'progress' },
      -- },
          sections = {
            lualine_a = {
                vim_icons,
                modes,
            },
            lualine_b = {
                {
                    "filename",
                    separator = { left = "", right = "" },
                },
                {
                    "filetype",
                    icon_only = false,
                    colored = false,
                    separator = { left = "", right = "" },
                    color = { bg = colors.fg, fg = "#121319" },
                },
            },
            lualine_c = {
                branch,
                diff,
                {
                    function()
                        return ""
                    end,
                    color = { bg = colors.bg, fg = colors.fg },
                    separator = { left = "", right = "" },
                },
                diagnostics,
            },
            lualine_x = {
                {
                    function()
                        return ""
                    end,
                    separator = { left = "", right = "" },
                    color = { bg = colors.bg, fg = colors.fg },
                },
                {
                    'lsp_progess',
                    color = { bg = colors.bg, fg = colors.fg },
                },
                {
                    'encoding',
                    cond = hide_in_width,
                    color = { bg = colors.bg, fg = colors.fg },
                },

            },
            lualine_y = {
                {
                    function()
                        return ""
                    end,
                    separator = { left = "", right = "" },
                },
                {
                    "progress",
                },
            },
            lualine_z = {
                {
                    function()
                        return ""
                    end,
                    separator = { left = "", right = "" },
                },
                {
                    "location",
                },
            },
        },
      inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = { { 'filename', path = 1 } },
        lualine_x = { { 'location', padding = 0 } },
        lualine_y = {},
        lualine_z = {},
      },
      tabline = {},
      extensions = { 'fugitive' },
    }
  end,
}
