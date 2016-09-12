set nocompatible

" plugin manager + plugins list itself
source ~/.vim/manager.vim

syntax on
set background=dark

let g:gruvbox_italic=1
colorscheme gruvbox

" include ~/.vimrc.local if it exists
if filereadable(expand('~/.vimrc.local'))
  source ~/.vimrc.local
endif
