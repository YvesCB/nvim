local api = vim.api
local cmd = vim.cmd
local keymap = vim.keymap
local set = vim.opt

-- ========== PACKAGE MANAGER ===========
-- in lua\plugins.lua
require("plugins")

-- ========== LANGUAGE SERVER ===========
-- in lua\lspconfig

-- ============= GENERAL ================

vim.g.mapleader = " "

set.number = true
set.relativenumber = true
set.expandtab = true
set.ignorecase = true
set.smartcase = true
set.incsearch = true
set.hidden = true
set.exrc = true
set.splitbelow = true
set.splitright = true
set.tabstop = 4
set.shiftwidth = 4
set.cmdheight = 1
set.updatetime = 300
set.laststatus = 3
set.encoding = "utf-8"
set.mouse = "a"
set.signcolumn = "yes"
set.guifont = "JetBrainsMono NF:h14"
set.diffopt:append("vertical")
set.shortmess:append("c")

cmd([[
colorscheme codedark

syntax enable
filetype plugin indent on

set nobackup
set nowritebackup

if (has("termguicolors"))
    set termguicolors
endif
]])

-- ================== AUTOCOMMANDS ========================

function myautocmd(event, pattern, group, command)
    api.nvim_create_autocmd(event, {
        pattern = pattern,
        group = group,
        command = command
    })
end

local gen_autocmd = api.nvim_create_augroup("gen_autocmd", {clear = true})

myautocmd("BufWritePost", "plugins.lua", gen_autocmd, "source <afile> | PackerCompile")

local tab_autocmd = api.nvim_create_augroup("tab_autocmd", {clear = true})

myautocmd("FileType", "html", tab_autocmd, "setlocal shiftwidth=2 tabstop=2")
myautocmd("FileType", "css", tab_autocmd, "setlocal shiftwidth=2 tabstop=2")
myautocmd("FileType", "javascript", tab_autocmd, "setlocal shiftwidth=2 tabstop=2")
myautocmd("FileType", "javascriptreact", tab_autocmd, "setlocal shiftwidth=2 tabstop=2")
myautocmd("FileType", "typescript", tab_autocmd, "setlocal shiftwidth=2 tabstop=2")
myautocmd("FileType", "typescriptreact", tab_autocmd, "setlocal shiftwidth=2 tabstop=2")

local skel_autocmd = api.nvim_create_augroup("skel_autocmd", {clear = true})
local skel_path = "~\\AppData\\Local\\nvim\\skeletons\\"

myautocmd("BufNewFile", "*.tsx", skel_autocmd, "0r "..skel_path.."react-typescript.tsx")
myautocmd("BufNewFile", "*.html", skel_autocmd, "0r "..skel_path.."html.html")
myautocmd("BufNewFile", "*.py", skel_autocmd, "0r "..skel_path.."python.py")
myautocmd("BufNewFile", "*.c", skel_autocmd, "0r "..skel_path.."c.c")
myautocmd("BufNewFile", "*.h", skel_autocmd, "0r "..skel_path.."h.h")
myautocmd("BufNewFile", "*.cpp", skel_autocmd, "0r "..skel_path.."cpp.cpp")

-- ==================== GLOBALS ===========================
vim.g.neovide_refresh_rate = 100

-- kassio/neoterm
vim.g.neoterm_default_mod = "vertical"
vim.g.neoterm_size = 60
vim.g.neoterm_autoinsert = 1

-- itchyny/lightline and itchyny/vim-gitbranch
vim.g.lightline = {
    active = { left = {{"mode", "paste"}, {"gitbranch", "readonly", "filename", "modified"}}},
    component_function = { gitbranch = "fugitive#head" },
    colorscheme = "codedark",
}

-- justinmk/vim-sneak
vim.g["sneak#s_next"] = 1
