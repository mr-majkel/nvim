vim.opt.list = true
-- vim.opt.listchars:append "space:⋅"
vim.opt.listchars:append "eol:"

return { "lukas-reineke/indent-blankline.nvim",
  config = function()
  require("ibl").setup {
    scope = {enabled= false,
  },
    exclude = {
      filetypes = {
      "lspinfo",
      "packer",
      "checkhealth",
      "help",
      "man",
      "startify", 
      "",
    }
    }
  }
  end
}
