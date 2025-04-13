return {
  "folke/snacks.nvim",
  priority = 1000,
  lazy = false,
  opts = {
    dashboard = {
        preset = {
          keys = {
            { icon = " ", key = "f", desc = "Find File", action = ":lua Snacks.dashboard.pick('files')" },
            { icon = " ", key = "g", desc = "Find Text", action = ":lua Snacks.dashboard.pick('live_grep')" },
            { icon = " ", key = "r", desc = "Recent Files", action = ":lua Snacks.dashboard.pick('oldfiles')" },
            { icon = " ", key = "c", desc = "Config", action = ":lua Snacks.dashboard.pick('files', {cwd = vim.fn.stdpath('config')})" },
            { icon = "󰒲 ", key = "L", desc = "Lazy", action = ":Lazy", enabled = package.loaded.lazy ~= nil },
            { icon = " ", key = "q", desc = "Quit", action = ":qa" },
          },
          header = [[
                                                                     
        ████ ██████           █████      ██                 btw
       ███████████             █████                            
       █████████ ███████████████████ ███   ███████████  
      █████████  ███    █████████████ █████ ██████████████  
     █████████ ██████████ █████████ █████ █████ ████ █████  
   ███████████ ███    ███ █████████ █████ █████ ████ █████ 
  ██████  █████████████████████ ████ █████ █████ ████ ██████
  ]],
        },

    sections = {
        -- {
        --   pane = 2,
        --   text = " ",
        --   padding = 1
        -- },
        {
          section = "header",
          pane = 1,
        },
        {
          pane = 1,
          section = "keys",
          gap = 1,
          padding = 1,
          -- indent = 15
        },
        {
          pane = 1,
          icon = " ",
          title = "Recent Files",
          section = "recent_files",
          -- indent = 2,
          padding = 1
        },
        {
          pane = 1,
          icon = " ",
          title = "Projects",
          section = "projects",
          -- indent = 2,
          padding = 1
        },
        {
          pane = 1,
          icon = " ",
          title = "Git Status",
          section = "terminal",
          enabled = function()
            return Snacks.git.get_root() ~= nil
          end,
          cmd = "git status --short --branch --renames",
          height = 5,
          padding = 1,
          ttl = 5 * 60,
          -- indent = 3,
        },
        {
          section = "startup",
          pane = 1,
          -- indent = 15,
          padding = 1,
          height = 15
        },
        {
          pane = 1,
          section = "terminal",
          cmd = "colorscript -e bars",
          height = 5,
          padding = 1,
          indent = 12,
          border = "rounded"
        },
        -- {
        --   pane = 3,
        --   text = "This is a test"
        -- }
      },
    },
  },
}


