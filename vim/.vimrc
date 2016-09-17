set nocompatible

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
