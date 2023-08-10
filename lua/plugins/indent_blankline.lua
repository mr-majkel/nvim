vim.opt.list = true
-- vim.opt.listchars:append "space:⋅"
vim.opt.listchars:append "eol:"

return { "lukas-reineke/indent-blankline.nvim",
  config = function()
  require("indent_blankline").setup {
    space_char_blankline = " ",
    show_current_context = false,
    show_current_context_start = false,
    filetype_exclude = {
      "lspinfo",
      "packer",
      "checkhealth",
      "help",
      "man",
      "startify", 
      "",
    }
  }
  end
}
