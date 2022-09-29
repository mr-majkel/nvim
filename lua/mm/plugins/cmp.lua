local cmp = require'cmp'
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
  },
   mapping = {
  ['<Tab>'] = cmp.mapping(cmp.mapping.select_next_item(), { 'i', 's' })
  }
}

