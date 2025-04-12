return {
  {
    'echasnovski/mini.nvim',
    version = '*',
    lazy = true,
    config = function()
      require("mini.completion").setup()
      require("mini.icons").setup()
      require("mini.snippets").setup()
      require("mini.comment").setup(
        {
          mappings = {
            comment = '<leader>/',
            comment_line = '<leader>/',
            comment_visual = '<leader>/',
          },
        }
      )
      require("mini.move").setup()
      require("mini.pairs").setup()
      require("mini.splitjoin").setup()
      require("mini.surround").setup(
        {
          mappings = {
            add = '<leader>Sa', -- Add surrounding in Normal and Visual modes
            delete = '<leader>Sd', -- Delete surrounding
            find = '<leader>Sf', -- Find surrounding (to the right)
            find_left = '<leader>SF', -- Find surrounding (to the left)
            highlight = '<leader>Sh', -- Highlight surrounding
            replace = '<leader>Sr', -- Replace surrounding
            update_n_lines = '<leader>Sn', -- Update `n_lines`
          }
        }
      )
      require("mini.git").setup()
      require("mini.diff").setup()
      require("mini.statusline").setup(
        {

        }
      )
      -- require("mini.indentscope").setup()
    end
  },
  {
    'rafamadriz/friendly-snippets',
    version = '*'
  }
}

