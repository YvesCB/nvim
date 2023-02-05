local api = vim.api
local cmd = vim.cmd
local keymap = vim.keymap

-- ========== PACKAGE MANAGER ===========
require('packer').startup(function()
  use 'wbthomason/packer.nvim'

  use 'itchyny/lightline.vim' 
  use 'itchyny/vim-gitbranch'
  use 'jiangmiao/auto-pairs'
  use 'tpope/vim-commentary'
  use 'tpope/vim-surround'
  use 'sbdchd/neoformat'
  use 'terryma/vim-multiple-cursors'
  use 'machakann/vim-highlightedyank'
  use 'justinmk/vim-sneak'
  use 'szw/vim-maximizer'
  use 'kassio/neoterm'
  use 'airblade/vim-gitgutter'
  use 'kdheepak/lazygit.nvim'
  use 'nvim-telescope/telescope.nvim'
  use { 'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }
  use 'nvim-telescope/telescope-file-browser.nvim'
  use 'nvim-lua/plenary.nvim'

  -- Language specific
  use { 'pangloss/vim-javascript', ft = 'javascript' }
  use { 'rust-lang/rust.vim', ft = 'rust' } 

  -- LSP and completion
  use 'neovim/nvim-lspconfig'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-vsnip'
  use 'hrsh7th/vim-vsnip'
  use 'rafamadriz/friendly-snippets'

  -- DAP for debugging
  -- use 'mfussenegger/nvim-dap'
  -- use 'mfussenegger/nvim-dap-python'

  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }

  -- Theme
  use 'tomasiser/vim-code-dark'
end)

-- ============= GENERAL ================
-- Making it so :so reloads all the requires
-- ...but it doesn't work
require('plenary.reload').reload_module('configs')
-- function _G.ReloadConfig()
--   local configs = {'telescope-config', 'keymap', 'lsp-config', 'treesitter-config'}
--   for config,_ in pairs(configs) do
--     package.loaded[config] = nil
--   end

--   dofile(vim.env.MYVIMRC)
-- end

-- vim.cmd('command! ReloadConfig lua ReloadConfig()')

local set = vim.opt
set.number = true
set.relativenumber = true
set.wrap = false
set.expandtab = true
set.ignorecase = true
set.smartcase = true
set.incsearch = true
set.splitbelow = true
set.splitright = true
set.showmode = false
set.showtabline = 2
set.tabstop = 2
set.shiftwidth = 2
set.cmdheight = 1
set.updatetime = 300
set.laststatus = 3
set.scrolloff = 3
set.colorcolumn = '90'
set.encoding = 'utf-8'
set.mouse = 'a'
set.signcolumn = 'yes'
set.guifont = 'JetBrainsMono NF:h14'
set.diffopt:append('vertical')
set.shortmess:append('c')

cmd([[
colorscheme codedark

syntax enable
filetype plugin indent on

set nobackup
set nowritebackup

set completeopt=menu,menuone,noselect

if (has('termguicolors'))
  set termguicolors
endif
]])

-- ==================== KEYMAP ============================
-- in lua\keymap.lua
vim.g.mapleader = ' '
require('keymap')

-- ================ LANGUAGE SERVER =======================
-- in lua\lsp-config.lua
require('lsp-config')

-- ================== TREESITTER ==========================
-- in lua\treesitter-config.lua
require('treesitter-config')

-- =================== TELESCOPE ==========================
-- in lua\telescope-config.lua
require('telescope-config')

-- ====================== DAP =============================
-- in lua\dap-config.lua
require('dap-config')

-- ================== AUTOCOMMANDS ========================

function myautocmd(event, pattern, group, command)
  api.nvim_create_autocmd(event, {
    pattern = pattern,
    group = group,
    command = command
  })
end

local gen_autocmd = api.nvim_create_augroup('gen_autocmd', {clear = true})

myautocmd('BufWritePost', 'plugins.lua', gen_autocmd, 'source <afile> | PackerCompile')

local tab_autocmd = api.nvim_create_augroup('tab_autocmd', {clear = true})

myautocmd('FileType', 'html', tab_autocmd, 'setlocal shiftwidth=2 tabstop=2')
myautocmd('FileType', 'css', tab_autocmd, 'setlocal shiftwidth=2 tabstop=2')
myautocmd('FileType', 'javascript', tab_autocmd, 'setlocal shiftwidth=2 tabstop=2')
myautocmd('FileType', 'javascriptreact', tab_autocmd, 'setlocal shiftwidth=2 tabstop=2')
myautocmd('FileType', 'typescript', tab_autocmd, 'setlocal shiftwidth=2 tabstop=2')
myautocmd('FileType', 'typescriptreact', tab_autocmd, 'setlocal shiftwidth=2 tabstop=2')

local skel_autocmd = api.nvim_create_augroup('skel_autocmd', {clear = true})
local skel_path = '~/.config/nvim/skeletons/'

myautocmd('BufNewFile', '*.tsx', skel_autocmd, '0r '..skel_path..'react-typescript.tsx')
myautocmd('BufNewFile', '*.html', skel_autocmd, '0r '..skel_path..'html.html')
myautocmd('BufNewFile', '*.py', skel_autocmd, '0r '..skel_path..'python.py')
myautocmd('BufNewFile', '*.c', skel_autocmd, '0r '..skel_path..'c.c')
myautocmd('BufNewFile', '*.h', skel_autocmd, '0r '..skel_path..'h.h')
myautocmd('BufNewFile', '*.cpp', skel_autocmd, '0r '..skel_path..'cpp.cpp')

-- ==================== GLOBALS ===========================
-- neovide
-- vim.g.neovide_refresh_rate = 100
-- vim.g.neovide_cursor_vfx_mode = 'sonicboom'
-- vim.g.neovide_window_floating_opacity = 0.6

-- kassio/neoterm
vim.g.neoterm_default_mod = 'vertical'
vim.g.neoterm_size = 60
vim.g.neoterm_autoinsert = 1

-- itchyny/lightline and itchyny/vim-gitbranch
vim.g.lightline = {
  active = { left = {{'mode', 'paste'}, {'gitbranch', 'readonly', 'filename', 'modified'}}},
  component_function = { gitbranch = 'gitbranch#name' },
  colorscheme = 'codedark',
}

-- justinmk/vim-sneak
vim.g['sneak#s_next'] = 1
