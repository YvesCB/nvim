local keymap = vim.keymap

-- ================ REMAPS ==============

-- Buffer navigation
keymap.set("n", "<c-tab>", ":bnext<cr>")
keymap.set("n", "<c-s-tab>", ":bprevious<cr>")

-- Split navigation
keymap.set("n", "<c-j>", "<c-w><c-j>", {remap = true})
keymap.set("n", "<c-k>", "<c-w><c-k>", {remap = true})
keymap.set("n", "<c-l>", "<c-w><c-l>", {remap = true})
keymap.set("n", "<c-h>", "<c-w><c-h>", {remap = true})

-- szw/vim-maximizer
keymap.set("n", "<leader>m", ":MaximizerToggle!<CR>", { silent=true })

-- kassio/neoterm
keymap.set("n", "<c-q>", ":Ttoggle<CR>", { silent=true })
keymap.set("i", "<c-q>", "<esc> :Ttoggle<CR>", { silent=true })
keymap.set("i", "<c-q>", "<c-\\><c-n> :Ttoggle<CR>", { silent=true })

-- sbdchd/neoformat
keymap.set("n", "<leader>F", ":Neoformat<CR>")

-- nvim-telescope/telescope.nvim
keymap.set("n", "<leader><leader>", ":Telescope find_files<CR>", { silent=true })
keymap.set("n", "<leader>fg", ":Telescope git_files<CR>", { silent=true })
keymap.set("n", "<leader>fl", ":Telescope live_grep<CR>", { silent=true })
keymap.set("n", "<leader>fb", ":Telescope buffers<CR>", { silent=true })

-- tpope/vim-fugitive
keymap.set("n", "<leader>gg", ":G<CR>", { silent=true })

-- nvim/lsp
local opts = { noremap=true, silent=true }
-- See `:help vim.diagnostic.*` for documentation on any of the below functions
keymap.set('n', '<leader>od', '<cmd>lua vim.diagnostic.open_float()<CR>')
keymap.set('n', '[d', '<cmd>lua vim.diagnostic.goto_prev()<CR>')
keymap.set('n', ']d', '<cmd>lua vim.diagnostic.goto_next()<CR>')
keymap.set('n', '<leader>q', '<cmd>lua vim.diagnostic.setloclist()<CR>')

-- Use an on_attach function to only map the following keys
-- after the language server attaches to the current buffer
local on_attach = function(client, bufnr)
    -- Mappings.
    -- See `:help vim.lsp.*` for documentation on any of the below functions
    vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>', opts)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opts)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', opts)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>wa', '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', opts)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>wr', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', opts)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>wl', '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', opts)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>D', '<cmd>lua vim.lsp.buf.type_definition()<CR>', opts)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>', opts)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>f', '<cmd>lua vim.lsp.buf.formatting()<CR>', opts)
end
