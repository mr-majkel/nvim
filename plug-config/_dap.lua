 require('dap-python').setup('~/.virtenvs/debugpy/bin/python')

 table.insert(require('dap').configurations.python, {
   name = 'docker attach',
   type = 'python',
   request = 'attach',
   port = 5678,
   host = "localhost",
   program = '${file}',
   pathMappings = {
     localRoot = '${workspaceFolder}',
     remoteRoot = "."
   }
 })