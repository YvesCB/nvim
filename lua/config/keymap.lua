local keymap = vim.keymap
local path = require('path')

local opts = { noremap=true, silent=true }
-- ========================================================
-- ======================= KEYMAP =========================
-- ========================================================
keymap.set('n', '<leader>oi', ':cd '..path.vim_config..' <cr>')
keymap.set('n', '<leader>oc', ':cd '..path.code..' <cr>')
keymap.set('n', '<leader>og', ':cd '..path.git..' <cr>')
keymap.set('n', 'gF', ':vertical wincmd f<CR>')
keymap.set('n', '<c-s>', ':%s/', {silent=true})
keymap.set('n', 'tn', ':tabnew <cr>', {silent=true})
keymap.set('n', 'th', ':tabprevious <cr>', {silent=true})
keymap.set('n', 'tl', ':tabnext <cr>', {silent=true})
keymap.set('n', 'to', ':tabonly <cr>', {silent=true})
keymap.set('n', 'tc', ':tabclose <cr>', {silent=true})
keymap.set('i', 'kj', '<esc>', {silent=true, remap=true})
keymap.set('v', 'kj', '<esc>', {silent=true})
keymap.set('c', 'kj', '<C-c>', {silent=true})

-- Buffer navigation
keymap.set('n', '<c-tab>', ':bnext<cr>')
keymap.set('n', '<c-s-tab>', ':bprevious<cr>')

-- Split navigation
keymap.set('n', '<c-j>', '<c-w><c-j>', {remap = true})
keymap.set('n', '<c-k>', '<c-w><c-k>', {remap = true})
keymap.set('n', '<c-l>', '<c-w><c-l>', {remap = true})
keymap.set('n', '<c-h>', '<c-w><c-h>', {remap = true})

-- szw/vim-maximizer
keymap.set('n', '<leader>m', ':MaximizerToggle!<CR>', { silent=true })

-- kassio/neoterm
keymap.set('n', '<c-q>', ':Ttoggle<CR>', { silent=true })
keymap.set('t', '<esc>', '<c-\\><c-n>', { silent=true })
keymap.set('t', '<c-q>', '<c-\\><c-n> :Ttoggle<CR>', { silent=true })

-- nvim-telescope/telescope.nvim
keymap.set('n', '<leader><leader>', ':Telescope find_files<CR>', { silent=true })
keymap.set('n', '<leader>fg', ':Telescope git_files<CR>', { silent=true })
keymap.set('n', '<leader>fl', ':Telescope live_grep<CR>', { silent=true })
keymap.set('n', '<leader>fb', ':Telescope file_browser<CR>', { silent=true })
keymap.set('n', '<leader>fB', ':Telescope buffers<CR>', { silent=true })

-- lazygit
keymap.set('n', '<leader>gg', ':LazyGit<CR>', { silent=true })

-- Use a loop to conveniently call 'setup' on multiple servers and
-- map buffer local keybindings when the language server attaches
-- nvim/lsp
-- See `:help vim.diagnostic.*` for documentation on any of the below functions
keymap.set('n', '<space>e', '<cmd>lua vim.diagnostic.open_float()<CR>', opts)
keymap.set('n', '[d', '<cmd>lua vim.diagnostic.goto_prev()<CR>', opts)
keymap.set('n', ']d', '<cmd>lua vim.diagnostic.goto_next()<CR>', opts)
keymap.set('n', '<space>q', '<cmd>lua vim.diagnostic.setloclist()<CR>', opts)

-- Use an on_attach function to only map the following keys
-- after the language server attaches to the current buffer
keymap.set('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opts)
keymap.set('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>', opts)
keymap.set('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
keymap.set('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
keymap.set('n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', opts)
keymap.set('n', '<leader>D', '<cmd>lua vim.lsp.buf.type_definition()<CR>', opts)
keymap.set('n', '<leader>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
keymap.set('n', '<leader>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>', opts)
keymap.set('n', '<A-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
keymap.set('n', '<C-n>', '<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>', opts)
keymap.set('n', '<C-p>', '<cmd>lua vim.lsp.diagnostic.goto_next()<CR>', opts)

-- DAP
-- local dap = require('dap')
-- local widgets = require('dap.ui.widgets')
-- keymap.set('n', '<F5>', function() dap.continue() end, {silent=true})
-- keymap.set('n', '<F10>', function() dap.step_over() end, {silent=true})
-- keymap.set('n', '<F11>', function() dap.step_into() end, {silent=true})
-- keymap.set('n', '<F12>', function() dap.step_out() end, {silent=true})
-- keymap.set('n', '<F6>', function() dap.close() end, {silent=true})

-- keymap.set('n', '<leader>db', function() dap.toggle_breakpoint() end, {silent=true})
-- keymap.set('n', '<leader>dB', function() dap.set_breakpoint(vim.fn.input('Break condition: ')) end, {silent=true})
-- keymap.set('n', '<leader>dl', function() dap.set_breakpoint(nil, nil, vim.fn.input('Log point: ')) end, {silent=true})
-- keymap.set('n', '<leader>dc', function() dap.clear_breakpoints() end, {silent=true})

-- keymap.set('n', '<leader>dr', function() dap.repl.open() end, {silent=true})
-- keymap.set('n', '<leader>dq', function() dap.repl.close() end, {silent=true})

-- keymap.set('n', '<leader>dv', function() widgets.hover() end, {silent=true})
-- keymap.set('n', '<leader>ds', function() widgets.sidebar(widgets.scopes).open() end, {silent=true})
