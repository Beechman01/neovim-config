return {
   "folke/which-key.nvim",
   event = "VeryLazy",
   opts = {
    preset = 'modern',
    defaults = {},
    win = {
      -- no_overlap = false,
      width = {
        min = 1,
        max = 90,
      },
      height = {
        min = 1,
        max = 100,
      },
      title = false,
      title_pos = "left"
    },
   },
   keys = {
    {"<leader>?", function() require("which-key").show({ global = false }) end, desc = "Buffer Local Keymaps (which-key)",},
    {"<leader>mt", function() require("mini.map").toggle() end, desc = "Toggle MiniMap"},
    {"<leader>ms", function() require("mini.map").toggle_side() end, desc = "Toggle MiniMap Side"}
   },
}
