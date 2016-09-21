" Follow google style guide for Vimscript
" https://google.github.io/styleguide/vimscriptguide.xml

" indent line continuation with 4 spaces
let g:vim_indent_cont=4

" use 2 spaces to indent, no tabs
setlocal expandtab
setlocal shiftwidth=2
setlocal softtabstop=2

" highlight long lines (80 and 100 columns)
call matchadd('ColorColumn', '\(\%80v\|\%100v\)', 100)

" invoke help for K command in vim files
" (K command is used to lookup keyword under cursor in the given program)
setlocal keywordprg=:help
