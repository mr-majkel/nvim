local default_layouts = {
    {
      elements = {
      -- Elements can be strings or table with id and size keys.
        { id = "scopes", size = 0.25 },
        "breakpoints",
        "stacks",
        "watches",
      },
      size = 40, -- 40 columns
      position = "left",
    },
    {
      elements = {
        "repl",
        "console",
      },
      size = 0.25, -- 25% of total lines
      position = "bottom",
    },
  }

local dapui = require("dapui")

dapui.setup({
  icons = { expanded = "▾", collapsed = "▸", current_frame = "▸" },
  mappings = {
    -- Use a table to apply multiple mappings
    expand = { "<CR>", "<2-LeftMouse>" },
    open = "o",
    remove = "d",
    edit = "e",
    repl = "r",
    toggle = "t",
  },
  -- Expand lines larger than the window
  -- Requires >= 0.7
  -- expand_lines = vim.fn.has("nvim-0.7") == 1,
  expand_lines = false,
  -- Layouts define sections of the screen to place windows.
  -- The position can be "left", "right", "top" or "bottom".
  -- The size specifies the height/width depending on position. It can be an Int
  -- or a Float. Integer specifies height/width directly (i.e. 20 lines/columns) while
  -- Float value specifies percentage (i.e. 0.3 - 30% of available lines/columns)
  -- Elements are the elements shown in the layout (in order).
  -- Layouts are opened in order so that earlier layouts take priority in window sizing.
  controls = {
    -- Requires Neovim nightly (or 0.8 when released)
    enabled = true,
    -- Display controls in this element
    element = "repl",
      icons = {
        disconnect = "",
        pause = "",
        play = "",
        run_last = "",
        step_back = "",
        step_into = "",
        step_out = "",
        step_over = "",
        terminate = ""
      }
  },
  floating = {
    max_height = nil, -- These can be integers or a float between 0 and 1.
    max_width = nil, -- Floats will be treated as percentage of your screen.
    border = "single", -- Border style. Can be "single", "double" or "rounded"
    mappings = {
      close = { "q", "<Esc>" },
    },
  },
  windows = { indent = 1 },
  render = {
    max_type_length = nil, -- Can be integer or nil.
    max_value_lines = 100, -- Can be integer or nil.
  },
  layouts = {
    {
      elements = {
        "repl",
      },
      size = 0.30, -- 25% of total lines
      position = "top",
    },
    {
      elements = {
        "scopes",
        "breakpoints",
        "stacks",
      },
      size = 40, -- 25% of total lines
      position = "left",
    },
    {
      elements = {
      -- Elements can be strings or table with id and size keys.
        "console",
      },
      size = 15, -- 40 columns
      position = "bottom",
    },
  },
})


 local keymap = vim.keymap.set
 keymap("n", "<leader>dur", function() dapui.toggle({layout = 1, reset = true}) end, {silent = true, desc = "Toggle dapui repl layout (up)"})
 keymap("n", "<leader>dus", function() dapui.toggle({layout = 2, reset = true}) end, {silent = true, desc = "Toggle dapui scopes layout (left)"} )
 keymap("n", "<leader>duc", function() dapui.toggle({layout = 3, reset = true}) end, {silent = true, desc = "Toggle dapui console layout (left)"} )
 keymap("n", "<leader>dua", function() dapui.toggle({reset = true}) end, {silent = true, desc = "Toggle all dapui layout"} )
