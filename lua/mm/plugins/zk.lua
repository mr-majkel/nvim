require("zk").setup({
  -- can be "telescope", "fzf" or "select" (`vim.ui.select`)
  -- it's recommended to use "telescope" or "fzf"
  picker = "telescope",

  lsp = {
    -- `config` is passed to `vim.lsp.start_client(config)`
    config = {
      cmd = { "zk", "lsp" },
      name = "zk",
      -- on_attach = ...
      -- etc, see `:h vim.lsp.start_client()`
    },

    -- automatically attach buffers in a zk notebook that match the given filetypes
    auto_attach = {
      enabled = false,
      filetypes = { "markdown" },
    },
  },
})

local zk = require("zk")
local util = require("zk.util")
local commands = require("zk.commands")

commands.add("ZkNewJournal", function(options)
  options = options or {}

  if not options.dir then
    options.dir = "journal/daily"
  end

  if options.inline == true then
    options.inline = nil
    options.dryRun = true
    options.insertLinkAtLocation = util.get_lsp_location_from_caret()
  end

  zk.new(options)
end)

