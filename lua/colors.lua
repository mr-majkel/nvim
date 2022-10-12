-- Material
vim.g.material_style="darker"

require('material').setup({

    contrast = {
        sidebars = true, -- Enable contrast for sidebar-like windows ( for example Nvim-Tree )
        floating_windows = true, -- Enable contrast for floating windows
        cursor_line = true, -- Enable darker background for the cursor line
        non_current_windows = true, -- Enable darker background for non-current windows
        popup_menu = true, -- Enable lighter background for the popup menu
    },

    italics = {
        comments = true, -- Enable italic comments
        keywords = false, -- Enable italic keywords
        functions = false, -- Enable italic functions
        strings = false, -- Enable italic strings
        variables = false -- Enable italic variables
    },

    contrast_filetypes = { -- Specify which filetypes get the contrasted (darker) background
        "terminal", -- Darker terminal background
        "packer", -- Darker packer background
        "qf" -- Darker qf list background
    },

    high_visibility = {
        lighter = false, -- Enable higher contrast text for lighter style
        darker = true -- Enable higher contrast text for darker style
    },

    disable = {
        colored_cursor = false, -- Disable the colored cursor
        borders = false, -- Disable borders between verticaly split windows
        background = false, -- Prevent the theme from setting the background (NeoVim then uses your teminal background)
        term_colors = false, -- Prevent the theme from setting terminal colors
        eob_lines = false -- Hide the end-of-buffer lines
    },

    lualine_style = "default", -- Lualine style ( can be 'stealth' or 'default' )

    async_loading = true, -- Load parts of the theme asyncronously for faster startup (turned on by default)

    custom_highlights = {}, -- Overwrite highlights with your own

    plugins = { -- Here, you can disable(set to false) plugins that you don't use or don't want to apply the theme to
        trouble = true,
        nvim_cmp = true,
        neogit = true,
        gitsigns = true,
        git_gutter = true,
        telescope = true,
        nvim_tree = true,
        sidebar_nvim = true,
        lsp_saga = true,
        nvim_dap = true,
        nvim_navic = true,
        which_key = true,
        sneak = true,
        hop = true,
        indent_blankline = true,
        nvim_illuminate = true,
        mini = true,
    }
})
-- AYU
-- local colors = require('ayu.colors')
-- colors.generate()

-- require('ayu').setup({
--   mirage = false, -- Set to `true` to use `mirage` variant instead of `dark` for dark background.
--   overrides = {
--     String = {fg = colors.vcs_added},
--     LineNr = {fg="#dddddd"},
--     VertSplit = {fg = "#555555", bg="#222222"},
--     NormalNC = {bg = "#222222"},
--     NormalFloat = {bg = "#121212"},
--     FloatBorder = {fg = "#888888", bg = "#121212"},


--   }, -- A dictionary of group names, each associated with a dictionary of parameters (`bg`, `fg`, `sp` and `style`) and colors in hex.
-- })
