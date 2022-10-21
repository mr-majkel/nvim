require 'mm.general.disable_builtins'
require 'mm.general.settings'
require 'plugins'
require 'mm.general.my_keys'
require 'colors'

vim.cmd.colorscheme("material")

P = function(table)
  print(vim.inspect(table))
end

