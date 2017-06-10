" vim-plug is used as the plugin manager for vim
" refer to https://github.com/junegunn/vim-plug for documentation

" Install vim-plug if we don't already have it
if empty(glob("~/.vim/autoload/plug.vim"))
  " Note that since we use stow we include autoload and plugged directories
  " in this repository. Generally you would have to create those directories
  " automatically with something like
  " execute 'mkdir -p ~/.vim/plugged'
  " execute 'mkdir -p ~/.vim/autoload'
  " TODO: make this installation snippet cross-platform and stow-independent
  "
  " Download the actual plugin manager
  execute '!curl -fLo ~/.vim/autoload/plug.vim https://raw.github.com/junegunn/vim-plug/master/plug.vim'
endif

call plug#begin('~/.vim/plugged')
  " Add plugins here
  " Make sure only single quotes are used
  Plug 'morhetz/gruvbox'
  " required by EditorConfig for vim without +fixendofline option
  Plug 'vim-scripts/PreserveNoEOL'
  Plug 'editorconfig/editorconfig-vim'
  Plug 'pangloss/vim-javascript'
  Plug 'mxw/vim-jsx'
  Plug 'kiryph/vim-vinegar'
  Plug 'mikewadsten/vim-gitwildignore'
  Plug 'nathangrigg/vim-beancount', { 'for': 'beancount' }
  Plug 'mileszs/ack.vim'
  Plug 'tpope/vim-surround'
  Plug 'w0rp/ale'
  Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
  Plug 'junegunn/fzf.vim'
  Plug 'junegunn/vim-easy-align'
call plug#end()
