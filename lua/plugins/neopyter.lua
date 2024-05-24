return {
  "SUSTech-data/neopyter",
  config = function()
    require("neopyter").setup({
      -- auto define autocmd
      auto_attach = true,
      -- auto connect rpc service
      auto_connect = true,
      mode="direct",
      -- same with JupyterLab settings
      remote_address = "127.0.0.1:9001",
      file_pattern = { "*.ju.*" },
      on_attach = function(bufnr)
      end,

      highlight = {
        enable = true,
        shortsighted = false,
      }
    })
    vim.keymap.set("n", "<leader>sna", function() vim.cmd.Neopyter({args = {"run", "allAbove"}}) end, { desc = "Neopyter run all above cells"})
    vim.keymap.set("n", "<leader>sne", function() vim.cmd.Neopyter({args = {"run", "all"}}) end, { desc = "Neopyter run all cells"})
    vim.keymap.set("n", "<leader>snc", function() vim.cmd.Neopyter({args = {"run", "current"}}) end, { desc = "Neopyter run current cell"})
  end,
  dependencies={
    "AbaoFromCUG/websocket.nvim"
  },
}
