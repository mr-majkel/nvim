local get_bufnrs = function()
  local bufs = {}
  for _, win in ipairs(vim.api.nvim_list_wins()) do
    bufs[vim.api.nvim_win_get_buf(win)] = true
  end
  return vim.tbl_keys(bufs)
end

local cmp = require 'cmp'
local lspkind = require 'lspkind'

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
    { name = "otter" },
    { name= "copilot"},
  },
  mapping = cmp.mapping.preset.insert {
    ['<C-b>'] = cmp.mapping.scroll_docs(-4),
    ['<C-f>'] = cmp.mapping.scroll_docs(4),
    ['<C-Space>'] = cmp.mapping.complete(),
    ['<CR>'] = cmp.mapping.confirm {
      behavior = cmp.ConfirmBehavior.Replace,
      select = true,
    },
    ['<C-n>'] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_next_item()
      else
        fallback()
      end
    end, { 'i', 's' }),
    ['<C-p>'] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_prev_item()
      else
        fallback()
      end
    end, { 'i', 's' }),
  },
  enabled = function()
    return vim.api.nvim_buf_get_option(0, "buftype") ~= "prompt"
        or require("cmp_dap").is_dap_buffer()
  end,
  formatting = {
  format = lspkind.cmp_format({
    mode = "symbol_text",
    menu = {
      buffer = "[Buffer]",
      nvim_lsp = "[LSP]",
      luasnip = "[LuaSnip]",
      nvim_lua = "[Lua]",
      latex_symbols = "[Latex]",
      otter = "[Otter]",
      copilot = "[Copilot]",
    },
    symbol_map = {Copilot = ""},
  }),
},
  window = {
    completion = {
      -- winhighlight = "Normal:Pmenu,FloatBorder:Pmenu,Search:None",
      border = "rounded",
    },
    documentation = {
      -- winhighlight = "Normal:Pmenu,FloatBorder:Pmenu,Search:None",
      border = "rounded",
    }
  },
}

require("cmp").setup.filetype({ "dap-repl", "dapui_watches", "dapui_hover" }, {
  sources = {
    { name = "dap" },
  },
})

