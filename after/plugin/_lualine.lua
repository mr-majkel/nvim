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

local macro_recording = {
  function()
    local reg = vim.fn.reg_recording()
    local msg = nil
    if reg == "" then
      return msg
    end
    msg = "Recording macro: " .. reg
    return msg
  end,
  icon = "@",
  color = {gui = 'bold'},
  cond = function() return vim.fn.reg_recording() ~= "" end,
}

require('lualine').setup{
  options = {
            theme = 'auto',
            section_separators = {'', ''},
            component_separators = {},
            disabled_filetypes = {},
            icons_enabled = true,
            globalstatus = true,
          },
          sections = {
            lualine_a = { {'mode', upper = true} },
            lualine_b = { {'filename', file_status = true}, 'filetype' },
            lualine_c = { 'location', macro_recording, 'searchcount', 'selectioncount'},
            lualine_x = { 'encoding', 'fileformat',{"copilot", show_colors=true}},
            lualine_y = { {'branch', icon = ''}, 'diff' },
            lualine_z = { lsp_status, {'diagnostics', sources = {'nvim_diagnostic'}} },
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
