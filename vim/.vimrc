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

syntax on
set background=dark

" no bells
set noerrorbells
set novisualbell

" display relative line numbers
set relativenumber

let g:gruvbox_italic=1
colorscheme gruvbox
" highlight background of line column number since theme doesn't do this
hi LineNr ctermbg=236

" include ~/.vimrc.local if it exists
if filereadable(expand('~/.vimrc.local'))
  source ~/.vimrc.local
endif
