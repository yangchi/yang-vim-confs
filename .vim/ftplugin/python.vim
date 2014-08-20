set nosmartindent
set textwidth=79
set tabstop=8
set expandtab

autocmd FileType python set complete+=k~/.vim/syntax/python.vim isk+=.,(

"Execute file being edited with <Shift> + e:
map <buffer> <S-e> :w<CR>:!/usr/bin/env python % <CR>
map <buffer> <S-t> :w<CR>:!python3 % <CR>

"For vim-indent-guides:
set ts=4 sw=4 et
"let g:indent_guides_start_level = 2
let g:indent_guides_guide_size = 1
