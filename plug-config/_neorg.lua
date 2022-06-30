require('neorg').setup {
  load = {
    ["core.defaults"] = {},
    ["core.norg.dirman"] = {
      config = {
        workspaces = {
          notes = "$HOME/neorg/notes",
        },
      },
    },
    ["core.gtd.base"] = {
      config = {
        workspace = "notes",
      },
    },
  }
}
