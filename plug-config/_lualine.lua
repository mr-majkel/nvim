  -- Lsp server name .
local lsp_status = {
  function ()
    local msg = 'No Active Lsp'
    local buf_ft = vim.api.nvim_buf_get_option(0,'filetype')
    local clients = vim.lsp.get_active_clients()
    if next(clients) == nil then return msg end
    for _, client in ipairs(clients) do
      local filetypes = client.config.filetypes
      if filetypes and vim.fn.index(filetypes, buf_ft) ~= -1 then
        return client.name
      end
    end
    return msg
  end,

  icon = ' LSP:',
  color = { gui = 'bold'}
}

require('lualine').setup{
  options = {
            theme = 'gruvbox',
            section_separators = {'', ''},
            component_separators = {},
            disabled_filetypes = {},
            icons_enabled = true,
          },
          sections = {
            lualine_a = { {'mode', upper = true} },
            lualine_b = { {'filename', file_status = true}, 'filetype' },
            lualine_c = { 'location' },
            lualine_x = { 'encoding', 'fileformat'},
            lualine_y = { {'branch', icon = ''}, 'diff' },
            lualine_z = { lsp_status, {'diagnostics', sources = {'nvim_lsp'}} },
          },
          inactive_sections = {
            lualine_a = {  },
            lualine_b = {  },
            lualine_c = { 'filename' },
            lualine_x = { 'location' },
            lualine_y = {  },
            lualine_z = {   }
          },
}
