local get_bufnrs = function()
  local bufs = {}
  for _, win in ipairs(vim.api.nvim_list_wins()) do
    bufs[vim.api.nvim_win_get_buf(win)] = true
  end
  return vim.tbl_keys(bufs)
end

local cmp = require 'cmp'
cmp.setup {
  sources = {
    { name = 'nvim_lsp',
      keyword_length = 4 },
    { name = 'path' },
    { name = 'buffer',
      keyword_length = 4,
      option = {
        get_bufnrs = get_bufnrs,
      }
    },
    { name = 'nvim_lua' },
    { name = "vim_dadbod_completion" },
  },
  mapping = {
    ['<Tab>'] = cmp.mapping(cmp.mapping.select_next_item(), { 'i', 's' })
  },
  enabled = function()
    return vim.api.nvim_buf_get_option(0, "buftype") ~= "prompt"
        or require("cmp_dap").is_dap_buffer()
  end
}

require("cmp").setup.filetype({ "dap-repl", "dapui_watches", "dapui_hover" }, {
  sources = {
    { name = "dap" },
  },
})