return {
  "kndndrj/nvim-dbee",
  dependencies = {
    "MunifTanjim/nui.nvim",
  },
  build = function()
    -- Install tries to automatically detect the install method.
    -- if it fails, try calling it with one of these parameters:
    --    "curl", "wget", "bitsadmin", "go"
    require("dbee").install()
  end,
  config = function()
    require("dbee").setup(--[[optional config]])
    local dbee = require("dbee")
    vim.keymap.set("n", "<leader>qo", dbee.open, {desc="Open DBee UI"} )
    vim.keymap.set("n", "<leader>qs", function() vim.print("hello")
      vim.ui.input({prompt = "Enter file name: ", completion="file"},
        function(input)
          dbee.store("csv", "file", {extra_arg = input} )
        end)
    end, {desc="Save result to file"})
  end,
}

