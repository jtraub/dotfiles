" Turn off vi compatibility.
" Reasoning for including this option in .vimrc can be found at
" http://stackoverflow.com/a/22543937/471899
" Reasoning for wrapping it into an if block and putting on the very first line
" can be found at
" http://stackoverflow.com/questions/34079992/vim-set-history-500-in-vimrc-not-taking-effect
if &compatible
  set nocompatible
endif

" plugin manager + plugins list itself
source ~/.vim/manager.vim

" syntax highlight
syntax on
" assume background is dark
set background=dark
" load filetype plugins and indentation
filetype plugin indent on

" use utf-8 encoding everywhere
set encoding=utf-8
" save files without byte order mark (BOM)
set nobomb

" allow backspace to delete join lines, delete over start position of insert
" and delete autoindentation in insert mode
set backspace=eol,indent,start

" increase history size
set history=1000

" no bells
set noerrorbells
set novisualbell

" display relative line numbers
set relativenumber
" display absolute line number in the current line
" normally this would turn on absolute numbers for all lines, but in
" conjunction with relativenumber absolute number is displayed only for
" current line
set number

" highlight search items
set hlsearch
set incsearch
set smartcase
set ignorecase

" enable mouse in all modes
set mouse=a

" highlight current line
set cursorline
" enable modeline (setting vim options) support in files
set modeline
" show possible completions in command line
set wildmenu
" complete till longest common string then each full match
set wildmode=longest,full
" show incomplete command in the last line
set showcmd

" check spelling for Russian and English (us)
set spelllang=en_us,ru

" http://vim.wikia.com/wiki/Make_Vim_completion_popup_menu_work_just_like_in_an_IDE
" insert longest common text of all matches
set completeopt=longest,menuone

" open new vsplits to the right
" and new splits below
set splitbelow
set splitright

let mapleader="\<Space>"

nnoremap <silent> <leader>c :noh<cr>

let g:gruvbox_italic = 1
" highlight bacjground of number column
let g:gruvbox_number_column = 'dark0_soft'
colorscheme gruvbox

" tree-like listing of directories in netrw
let g:netrw_liststyle = 3

" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

hi SpellBad cterm=underline

if executable('rg')
  let g:ackprg = 'rg --vimgrep --no-heading'
endif

" include ~/.vimrc.local if it exists
if filereadable(expand('~/.vimrc.local'))
  source ~/.vimrc.local
endif
