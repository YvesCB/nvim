" DONT CHANGE THIS
call plug#begin('C:/Users/Yves/AppData/Local/nvim/plugged') 
Plug 'ryanoasis/vim-devicons'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'jiangmiao/auto-pairs'
Plug 'scrooloose/nerdcommenter'
" To comment out a single line, use <leader>cc
" To uncomment a line, use <leader>cu
Plug 'vim-scripts/Rename2'

" React stuff
Plug 'pangloss/vim-javascript'
Plug 'MaxMEllon/vim-jsx-pretty'
Plug 'styled-components/vim-styled-components'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
let g:coc_global_extensions = [
  \ 'coc-tsserver'
  \ ]
if isdirectory('./node_modules') && isdirectory('./node_modules/prettier')
  let g:coc_global_extensions += ['coc-prettier']
endif

if isdirectory('./node_modules') && isdirectory('./node_modules/eslint')
  let g:coc_global_extensions += ['coc-eslint']
endif
" Plug 'alvan/vim-closetag'
" Plug 'sukima/xmledit/'

Plug 'tpope/vim-ragtag'

Plug 'sbdchd/neoformat'
" Plug 'davidhalter/jedi-vim'
" <leader>d: go to definition
" K: check documentation of class or method
" <leader>n: show the usage of a name in current file
" <leader>r: rename a name

Plug 'scrooloose/nerdtree'
" File tree, open with :NERDTree

Plug 'neomake/neomake'
Plug 'terryma/vim-multiple-cursors'
" Use <Ctrl-N> to rename variable under cursor

Plug 'machakann/vim-highlightedyank'
" Plug 'tmhedberg/SimpylFold'
" zo Open fold in current cursor position
" zO Open fold and sub-fold in current cursor position recursively
" zc Close the fold in current cursor position
" zC Close the fold and sub-fold in current cursor position recursively

Plug 'morhetz/gruvbox'
Plug 'tpope/vim-surround'
Plug 'junegunn/fzf'
Plug 'rust-lang/rust.vim', {'for': 'rust'} 

" Git Plugs
Plug 'mhinz/vim-signify'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'junegunn/gv.vim'

Plug 'justinmk/vim-sneak'

" Markdown
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }
call plug#end()

:cd C:\git

set exrc

syntax enable
filetype plugin indent on

source C:\Users\Yves\AppData\Local\nvim\plug-config\signify.vim
source C:\Users\Yves\AppData\Local\nvim\plug-config\markdown-preview.vim
source C:\Users\Yves\AppData\Local\nvim\plug-config\coc.vim

set number
set relativenumber
set tabstop=8
set shiftwidth=4
set expandtab

" Splits
set splitbelow
set splitright

map <C-Tab> :bnext<cr>
map <C-S-Tab> :bprevious<cr>

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Make resizing splits more friendly
noremap <silent> <C-Left> :vertical resize +3<CR>
noremap <silent> <C-Right> :vertical resize -3<CR>
noremap <silent> <C-Up> :resize +3<CR>
noremap <silent> <C-Down> :resize -3<CR>

autocmd FileType html set omnifunc=htmlcomplete#CompleteTags

let g:airline_theme='tomorrow'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:sneak#s_next=1

let g:neomake_python_enabled_makers = ['pylint', 'cppcheck', 'cargo']

" Markdown
" specify browser to open preview page
" default: ''
let g:mkdp_browser = ''

" neovide specific settings:

let g:neovide_refresh_rate=100
set guifont=JetBrainsMono\ NF:h14

colorscheme gruvbox

" Extra Remaps
map <F4> :NERDTree<CR>
" inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"
nmap <F5> :vsp <bar> :terminal .\build.bat <CR>
nmap <F6> :vsp <bar> :terminal .\run.bat <CR>

nmap <C-,> :nohl <CR>

autocmd BufEnter *.{js,jsx,ts,tsx} :syntax sync fromstart
autocmd BufLeave *.{js,jsx,ts,tsx} :syntax sync clear

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

autocmd BufNewFile,BufRead *.js set filetype=javascript.jsx
autocmd BufNewFile,BufRead *.jsx set filetype=javascript.jsx

autocmd FileType html setlocal shiftwidth=2 tabstop=2
autocmd FileType css setlocal shiftwidth=2 tabstop=2
autocmd FileType javascript setlocal shiftwidth=2 tabstop=2
autocmd FileType javascriptreact setlocal shiftwidth=2 tabstop=2
autocmd FileType typescript setlocal shiftwidth=2 tabstop=2
autocmd FileType typescriptreact setlocal shiftwidth=2 tabstop=2

" Skeletons
autocmd BufNewFile *.tsx 0r C:\Users\Yves\AppData\Local\nvim\skeletons\react-typescript.tsx
autocmd BufNewFile *.html 0r C:\Users\Yves\AppData\Local\nvim\skeletons\html.html
autocmd BufNewFile *.py 0r C:\Users\Yves\AppData\Local\nvim\skeletons\python.py
autocmd BufNewFile *.c 0r C:\Users\Yves\AppData\Local\nvim\skeletons\c.c
autocmd BufNewFile *.h 0r C:\Users\Yves\AppData\Local\nvim\skeletons\h.h
autocmd BufNewFile *.cpp 0r C:\Users\Yves\AppData\Local\nvim\skeletons\cpp.cpp
