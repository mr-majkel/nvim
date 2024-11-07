return {
  "nvim-telescope/telescope.nvim",
  dependencies = {
    { 
        "nvim-telescope/telescope-live-grep-args.nvim" ,
        -- This will not install any breaking changes.
        -- For major updates, this must be adjusted manually.
        version = "^1.0.0",
    },
  },
  config = function()
    local telescope = require("telescope")
    local lga_actions = require("telescope-live-grep-args.actions")

    -- first setup telescope
    telescope.setup({
      defaults = {
        layout_config = {
          center = { width = 120 }
        },
        path_display = { "smart" }
      },
      pickers = {
        buffers = {
          sort_lastused = true,
          theme = "dropdown",
          path_display = { "smart" },
          mappings = {
            i = {
              ["<c-d>"] = require("telescope.actions").delete_buffer,
            },
            n = {
              ["<c-d>"] = require("telescope.actions").delete_buffer,
            }
          }
        },
        find_files = {
          theme = "dropdown"
        }
      },
  extensions = {
    live_grep_args ={
      auto_quoting = true, -- enable/disable auto-quoting
      -- define mappings, e.g.
      mappings = { -- extend mappings
        i = {
          ["<C-k>"] = lga_actions.quote_prompt(),
          ["<C-i>"] = lga_actions.quote_prompt({ postfix = " --iglob " }),
          -- freeze the current list and start a fuzzy search in the frozen list
          ["<C-space>"] = lga_actions.to_fuzzy_refine,
        },
      },
      -- ... also accepts theme settings, for example:
      -- theme = "dropdown", -- use dropdown theme
      -- theme = { }, -- use own theme spec
      -- layout_config = { mirror=true }, -- mirror preview pane
    }
    },
  })

    -- then load the extension
    telescope.load_extension("live_grep_args")
    local map = vim.keymap.set
    map("n", "<leader>ff", require'telescope.builtin'.find_files, {desc="Find file"})
    map("n", "<leader>fb", function() require'telescope.builtin'.buffers{ show_all_buffers = true } end, {desc="Find buffer"})
    map("n", "<leader>fg", require'telescope.builtin'.git_branches, {desc="Find branch"})
    map("n", "<leader>fr", require('telescope').extensions.live_grep_args.live_grep_args, {desc="Live grep"})
    map("n", "<leader>fh", require'telescope.builtin'.help_tags, {desc="Help tags"})
    map("n", "<leader>gr", function() require'telescope.builtin'.lsp_references{ path_display = {"shorten" }} end, {desc="LSP references"})
    map("n", "<leader>ft", require'telescope.builtin'.treesitter, {desc="Treesitter nodes"})
    map("n", "<leader>fc", require'telescope.builtin'.git_bcommits, {desc="Buffer commits"})
  end
}
