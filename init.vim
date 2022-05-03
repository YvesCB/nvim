" DONT CHANGE THIS
call plug#begin('$HOMEPATH/AppData/Local/nvim/plugged') 
    " General Plugins
    Plug 'ryanoasis/vim-devicons'
    Plug 'itchyny/lightline.vim'
    Plug 'itchyny/vim-gitbranch'
    Plug 'jiangmiao/auto-pairs'
    Plug 'scrooloose/nerdtree'
    Plug 'tpope/vim-ragtag'
    Plug 'tpope/vim-surround'
    Plug 'tpope/vim-fugitive'
    Plug 'tpope/vim-commentary'
    Plug 'sbdchd/neoformat'
    Plug 'neomake/neomake'
    Plug 'terryma/vim-multiple-cursors'
    Plug 'pangloss/vim-javascript'
    Plug 'MaxMEllon/vim-jsx-pretty'
    Plug 'styled-components/vim-styled-components'
    Plug 'machakann/vim-highlightedyank'
    Plug 'justinmk/vim-sneak'
    Plug 'szw/vim-maximizer'
    Plug 'christoomey/vim-tmux-navigator'
    Plug 'kassio/neoterm'
    Plug 'sbdchd/neoformat'
    Plug 'junegunn/fzf', { 'dir': '$HOMEPATH/.fzf', 'do': './install --all' }
    Plug 'junegunn/fzf.vim'
    Plug 'airblade/vim-gitgutter'

    Plug 'rust-lang/rust.vim', {'for': 'rust'} 

    " Coc settings
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    
    if isdirectory('./node_modules') && isdirectory('./node_modules/prettier')
      let g:coc_global_extensions += ['coc-prettier']
    endif

    if isdirectory('./node_modules') && isdirectory('./node_modules/eslint')
      let g:coc_global_extensions += ['coc-eslint']
    endif

    " Color theme
    Plug 'tomasiser/vim-code-dark'
call plug#end()

colorscheme codedark

set guifont=JetBrainsMono\ NF:h16

" Start in the HOMEPATH
:cd $HOMEPATH  

" Sourcing plugin specific configs
source $HOMEPATH\AppData\Local\nvim\plug-config\markdown-preview.vim
source $HOMEPATH\AppData\Local\nvim\plug-config\coc.vim

set exrc
set rtp+=$HOMEPATH/.fzf

syntax enable
filetype plugin indent on

set number
set relativenumber
set mouse=a
set tabstop=4
set shiftwidth=4
set expandtab
set ignorecase
set smartcase
set incsearch
set diffopt+=vertical
set hidden
set nobackup
set nowritebackup
set signcolumn=yes
set updatetime=300
set shortmess+=c
set cmdheight=1

" Splits
set splitbelow
set splitright

let mapleader = " "

if (has("termguicolors"))
    set termguicolors
endif

"=================== REMAPS ==================

nmap <C-Tab> :bnext<cr>
nmap <C-S-Tab> :bprevious<cr>

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Make resizing splits more friendly
noremap <silent> <C-Left> :vertical resize +3<CR>
noremap <silent> <C-Right> :vertical resize -3<CR>
noremap <silent> <C-Up> :resize +3<CR>
noremap <silent> <C-Down> :resize -3<CR>

" Extra Remaps
nmap <F4> :NERDTree<CR>
nmap <F5> :vsp <bar> :terminal .\build.bat <CR>
nmap <F6> :vsp <bar> :terminal .\run.bat <CR>

nmap <C-,> :nohl <CR>

" szw/vim-maximizer
nnoremap <leader>m :MaximizerToggle!<CR>

" kassio/neoterm
nnoremap <c-q> :Ttoggle<CR>
inoremap <c-q> <Esc> :Ttoggle<CR>
inoremap <c-q> <c-\><c-n> :Ttoggle<CR>

" sbdchd/neoformat
nnoremap <leader>F :Neoformat prettier<CR>

" junegunn/fzf
nnoremap <leader><space> :GFiles<CR> 
nnoremap <leader>ff :Rg<CR> 
inoremap <expr> <c-x><c-f> fzf#vim#complete#path(
            \ "find . -path '*/\.*' -prune -o -print \| sed '1d;s:^..::'",
            \ fzf#wrap ({'dir': expand('%:p:h')}))
if has('nvim')
    au! TermOpen * tnoremap <buffer> <Esc> <c-\><c-n>
    au! FileType fzf tunmap <buffer> <Esc>
endif

" tpope/vim-fugitive
nnoremap <leader>gg :G<CR>

"================ AUTOCOMMANDS ================

autocmd FileType html set omnifunc=htmlcomplete#CompleteTags

autocmd BufEnter *.{js,jsx,ts,tsx} :syntax sync fromstart
autocmd BufLeave *.{js,jsx,ts,tsx} :syntax sync clear

autocmd BufNewFile,BufRead *.js set filetype=javascript.jsx
autocmd BufNewFile,BufRead *.jsx set filetype=javascript.jsx

autocmd FileType html setlocal shiftwidth=2 tabstop=2
autocmd FileType css setlocal shiftwidth=2 tabstop=2
autocmd FileType javascript setlocal shiftwidth=2 tabstop=2
autocmd FileType javascriptreact setlocal shiftwidth=2 tabstop=2
autocmd FileType typescript setlocal shiftwidth=2 tabstop=2
autocmd FileType typescriptreact setlocal shiftwidth=2 tabstop=2

" Skeletons
autocmd BufNewFile *.tsx 0r $HOMEPATH\AppData\Local\nvim\skeletons\react-typescript.tsx
autocmd BufNewFile *.html 0r $HOMEPATH\AppData\Local\nvim\skeletons\html.html
autocmd BufNewFile *.py 0r $HOMEPATH\AppData\Local\nvim\skeletons\python.py
autocmd BufNewFile *.c 0r $HOMEPATH\AppData\Local\nvim\skeletons\c.c
autocmd BufNewFile *.h 0r $HOMEPATH\AppData\Local\nvim\skeletons\h.h
autocmd BufNewFile *.cpp 0r $HOMEPATH\AppData\Local\nvim\skeletons\cpp.cpp

"================ GLOBALS ======================

" kassio/neoterm
let g:neoterm_default_mod = 'vertical'
let g:neoterm_size = 60
let g:neoterm_autoinsert = 1

" itchyny/lightline and itchyny/vim-gitbranch
let g:lightline = {
    \ 'active': {
    \ 'left': [['mode', 'paste'], 
    \          ['gitbranch', 'readonly', 'filename', 'modified']]
    \ },
    \ 'component_function': {
    \   'gitbranch': 'gitbranch#name'
    \ },
    \ 'colorscheme': 'codedark',
    \ }

let g:sneak#s_next=1

let g:neomake_python_enabled_makers = ['pylint', 'cppcheck', 'cargo']

let g:neovide_refresh_rate=100

" Tag completion
" filenames like *.xml, *.html, *.xhtml, ...
" These are the file extensions where this plugin is enabled.
"
let g:closetag_filenames = '*.html,*.xhtml,*.phtml'

" filenames like *.xml, *.xhtml, ...
" This will make the list of non-closing tags self-closing in the specified files.
"
let g:closetag_xhtml_filenames = '*.xhtml,*.jsx'
" filetypes like xml, html, xhtml, ...
" These are the file types where this plugin is enabled.
"
let g:closetag_filetypes = 'html,xhtml,phtml'

" filetypes like xml, xhtml, ...
" This will make the list of non-closing tags self-closing in the specified files.
"
let g:closetag_xhtml_filetypes = 'xhtml,javascript.jsx,jsx'

" integer value [0|1]
" This will make the list of non-closing tags case-sensitive (e.g. `<Link>` will be closed while `<link>` won't.)
"
let g:closetag_emptyTags_caseSensitive = 1

" dict
" Disables auto-close if not in a "valid" region (based on filetype)
"
let g:closetag_regions = {
    \ 'typescript.tsx': 'jsxRegion,tsxRegion',
    \ 'javascript.jsx': 'jsxRegion',
    \ 'typescriptreact': 'jsxRegion,tsxRegion',
    \ 'javascriptreact': 'jsxRegion',
    \ }

" Shortcut for closing tags, default is '>'
"
let g:closetag_shortcut = '>'

" Add > at current position without closing the current tag, default is ''
"
let g:closetag_close_shortcut = '<leader>>'

