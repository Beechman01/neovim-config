return {
  {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
      require('lualine').setup {
        options = {
          icons_enabled = true,
          theme = 'palenight',
          section_separators = { left = '', right = '' },
          component_separators = { left = '', right = '' },
          disabled_filetypes = {
            statusline = {},
            winbar = {},
          },
          ignore_focus = {},
          always_divide_middle = true,
          always_show_tabline = true,
          globalstatus = false,
          refresh = {
            statusline = 100,
            tabline = 100,
            winbar = 100,
          }
        },

        sections = {
          lualine_a = {{ 'mode', separator = { left = '',right = '' }, left_padding = 1, right_padding = 1 }},
          lualine_b = {'branch', 'diff'}, --, 'diagnostics'},
          lualine_c = {{'filename', path = 1}, 'filesize'},
          lualine_x = {'encoding', 'fileformat', 'filetype', 'diagnostics'},
          lualine_y = {'progress'},
          lualine_z = {{'location', separator = { left = '',right = '' }, left_padding = 1, right_padding = 1 }},
        },
        inactive_sections = {
          lualine_a = {},
          lualine_b = {},
          lualine_c = {'filename'},
          lualine_x = {'location'},
          lualine_y = {},
          lualine_z = {}
        },
        -- tabline = {
        --   lualine_a = { {'buffers', separator = { left = '', right = ''}, left_padding = 2, right_padding = 2} },
        --   lualine_b = {},
        --   lualine_c = {},
        --   lualine_x = {},
        --   lualine_y = {},
        --   lualine_z = {{'tabs', separator = { left = '',right = '' }, left_padding = 2, right_padding = 2 }}
        -- },
        winbar = {
          lualine_a = {},
          lualine_b = {{'hostname', separator = { left = '',right = '' }, left_padding = 2, right_padding = 2 }},
          lualine_c = {},
          lualine_x = {'lsp_status'},
          lualine_y = {{'windows', separator = { left = '',right = '' }, left_padding = 2, right_padding = 2 }},
          lualine_z = {}
        },
        inactive_winbar = {
          lualine_a = {},
          lualine_b = {{'hostname', separator = { left = '',right = '' }, left_padding = 2, right_padding = 2 }},
          lualine_c = {},
          lualine_x = {'lsp_status'},
          lualine_y = {{'windows', separator = { left = '',right = '' }, left_padding = 2, right_padding = 2 }},
          lualine_z = {}
        },
        extensions = {}
      }
    end
  },
}
