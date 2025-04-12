return {
    ---@type LazySpec
  {
    "mikavilpas/yazi.nvim",
    event = "VeryLazy",
    dependencies = {
      -- check the installation instructions at
      -- https://github.com/folke/snacks.nvim
      "folke/snacks.nvim"
    },
    keys = {
      -- 👇 in this section, choose your own keymappings!
      {
        "<leader>e",
        mode = { "n", "v" },
        "<cmd>Yazi<cr>",
        desc = "Open yazi at the current file",
      },
      {
        -- Open in the current working directory
        "<leader>E",
        "<cmd>Yazi cwd<cr>",
        desc = "Open the file manager in nvim's working directory",
      },
      -- {
      --   "<c-up>",
      --   "<cmd>Yazi toggle<cr>",
      --   desc = "Resume the last yazi session",
      -- },
    },
    ---@type YaziConfig | {}
    opts = {
      -- if you want to open yazi instead of netrw, see below for more info
      open_for_directories = false,
      floating_window_scaling_factor = 0.6,
      highlight_hovered_buffers_in_same_directory = false,
      use_ya_for_events_reading = false,
      highlight_groups = {
        -- See https://github.com/mikavilpas/yazi.nvim/pull/180
        hovered_buffer = {bg = "#24273a"},
        -- See https://github.com/mikavilpas/yazi.nvim/pull/351
        hovered_buffer_in_same_directory = {bg = "#24273a"},
      },
      keymaps = {
        show_help = "<f1>",
        open_file_in_vertical_split = "<A-v>",
        open_file_in_horizontal_split = "<A-h>",
        open_file_in_tab = false,
      },
    },
    -- 👇 if you use `open_for_directories=true`, this is recommended
    init = function()
      -- More details: https://github.com/mikavilpas/yazi.nvim/issues/802
      -- vim.g.loaded_netrw = 1
      vim.g.loaded_netrwPlugin = 1
    end,
  }
}
