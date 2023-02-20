vim.g.diagnostic_enable_virtual_text=1

-- Set completeopt to have a better completion experience
vim.o.completeopt = "menuone,noinsert,noselect"
-- Avoid showing message extra message when using completion
vim.o.shortmess = vim.o.shortmess .. 'c' 


local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require('cmp_nvim_lsp').default_capabilities(capabilities)

local nvim_lsp = require('lspconfig')

local handlers = {
  ["textDocument/hover"] = vim.lsp.with(
  vim.lsp.handlers.hover, {
    -- Use a sharp border with `FloatBorder` highlights
    border = "single"
  })
}

local on_attach = function(client, bufnr)
  local function buf_set_option(...) vim.api.nvim_buf_set_option(bufnr, ...) end
  local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end

  buf_set_option('omnifunc', 'v:lua.vim.lsp.omnifunc')

  -- Mappings.
  local opts = { noremap=true, silent=true }
  buf_set_keymap('n', 'gD', '<Cmd>lua vim.lsp.buf.declaration()<CR>', opts)
  buf_set_keymap('n', 'gd', '<Cmd>lua vim.lsp.buf.definition()<CR>', opts)
  buf_set_keymap('n', 'K', '<Cmd>lua vim.lsp.buf.hover()<CR>', opts)
--  buf_set_keymap('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
  buf_set_keymap('n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
  buf_set_keymap('n', '<leader>wa', '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', opts)
  buf_set_keymap('n', '<leader>wr', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', opts)
  buf_set_keymap('n', '<leader>wl', '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', opts)
  buf_set_keymap('n', '<leader>D', '<cmd>lua vim.lsp.buf.type_definition()<CR>', opts)
  buf_set_keymap('n', '<leader>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
--  buf_set_keymap('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)

  -- Set some keybinds conditional on server capabilities
  if client.server_capabilities.document_formatting then
    buf_set_keymap("n", "<leader>gf", "<cmd>lua vim.lsp.buf.formatting()<CR>", opts)
  elseif client.server_capabilities.document_range_formatting then
    buf_set_keymap("n", "<leader>gf", "<cmd>lua vim.lsp.buf.range_formatting()<CR>", opts)
  end

end

-- Use a loop to conveniently both setup defined servers 
-- and map buffer local keybindings when the language server attaches
local servers = { "pyright", "vimls", "tsserver", "jsonls"}

for _, lsp in ipairs(servers) do
  nvim_lsp[lsp].setup {capabilities = capabilities, on_attach = on_attach, handlers = handlers}
end

nvim_lsp["r_language_server"].setup {
  capabilities = capabilities,
  on_attach = on_attach, 
  settings = {
    rich_documentation = false,
    }
}

-- require('lspconfig').sqls.setup{
--     on_attach = function(client, bufnr)
--         require('sqls').on_attach(client, bufnr)
--     end
-- }

nvim_lsp["gopls"].setup({capabilities = capabilities, on_attach = on_attach})

-- vim.cmd([[
-- augroup completion_lua
--   autocmd FileType sql let g:completion_trigger_character = ['.', '"', '`', '['] 
-- augroup END

-- ]])

local runtime_path = vim.split(package.path, ';')

table.insert(runtime_path, "lua/?.lua")
table.insert(runtime_path, "lua/?/init.lua")

require'lspconfig'.lua_ls.setup {
  settings = {
    Lua = {
      runtime = {
        -- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
        version = 'LuaJIT',
        -- Setup your lua path
        path = runtime_path,
      },
      diagnostics = {
        -- Get the language server to recognize the `vim` global
        globals = {'vim'},
      },
      workspace = {
        -- Make the server aware of Neovim runtime files
        library = vim.api.nvim_get_runtime_file("", true),
      },
      -- Do not send telemetry data containing a randomized but unique identifier
      telemetry = {
        enable = false,
      },
    },
  },
}

local zk_on_attach = function(client, bufnr)
  local function buf_set_option(...) vim.api.nvim_buf_set_option(bufnr, ...) end
  local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end

  buf_set_option('omnifunc', 'v:lua.vim.lsp.omnifunc')

  -- Mappings.
  local opts = { noremap=true, silent=true }
  buf_set_keymap('n', 'gD', '<Cmd>lua vim.lsp.buf.declaration()<CR>', opts)
  buf_set_keymap('n', 'gd', '<Cmd>lua vim.lsp.buf.definition()<CR>', opts)
  buf_set_keymap('n', 'K', '<Cmd>lua vim.lsp.buf.hover()<CR>', opts)

  local opts = { noremap=true, silent=false }
  -- Open the link under the caret.
  buf_set_keymap("n", "<CR>", "<Cmd>lua vim.lsp.buf.definition()<CR>", opts)
  -- Create a new note after asking for its title.
  -- This overrides the global `<leader>zn` mapping to create the note in the same directory as the current buffer.
  buf_set_keymap("n", "<leader>zn", "<Cmd>ZkNew { dir = vim.fn.expand('%:p:h'), title = vim.fn.input('Title: ') }<CR>", opts)
  -- Create a new note in the same directory as the current buffer, using the current selection for title.
  buf_set_keymap("v", "<leader>znt", ":'<,'>ZkNewFromTitleSelection { dir = vim.fn.expand('%:p:h') }<CR>", opts)
  -- Create a new note in the same directory as the current buffer, using the current selection for note content and asking for its title.
  buf_set_keymap("v", "<leader>znc", ":'<,'>ZkNewFromContentSelection { dir = vim.fn.expand('%:p:h'), title = vim.fn.input('Title: ') }<CR>", opts)
  buf_set_keymap("n", "<leader>zj", "<Cmd>ZkNewJournal<CR>", opts)
  buf_set_keymap("n", "<leader>zij", "<Cmd>ZkNewJournal {inline=true}<CR>", opts)

  -- Open notes linking to the current buffer.
  buf_set_keymap("n", "<leader>zb", "<Cmd>ZkBacklinks<CR>", opts)
  -- Alternative for backlinks using pure LSP and showing the source context.
  --map('n', '<leader>zb', '<Cmd>lua vim.lsp.buf.references()<CR>', opts)
  -- Open notes linked by the current buffer.
  buf_set_keymap("n", "<leader>zl", "<Cmd>ZkLinks<CR>", opts)
  -- Open the code actions for a visual selection.
  buf_set_keymap("v", "<leader>za", ":'<,'>lua vim.lsp.buf.range_code_action()<CR>", opts)
end

nvim_lsp["zk"].setup({capabilities = capabilities, on_attach = zk_on_attach, handlers = handlers})
