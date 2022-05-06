-- Setting up the Adapters

local dap = require('dap')
dap.adapters.python = {
    type = 'executable',
    command = '~\\debugpy\\Scripts\\activate',
    args = { '-m', 'debugpy.adapter' },
}
