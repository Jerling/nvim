" vimscript
"
" init.vim
"
" Copyright (C) 2020 Jerling <linjieli001@qq.com>
"
" Distributed under terms of the MIT license.
"

let g:root_path = fnamemodify(expand('<sfile>'), ':h')
let g:personal_dir   = $HOME.'/.nvim.d'

execute 'source' g:root_path.'/core/main.vim'
