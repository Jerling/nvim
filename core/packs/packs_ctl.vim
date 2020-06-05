" vimscript
"
" packs_ctl.vim
"
" Copyright (C) 2020 Jerling <linjieli001@qq.com>
"
" Distributed under terms of the MIT license.
"
" control pack load on startup
"
execute 'source' fnamemodify(expand('<sfile>'), ':h').'/pack_manager.vim'

let g:general#auto_center = 1 
let g:general#emacs = 1 

execute 'source' fnamemodify(expand('<sfile>'), ':h').'/control/ui_ctl.vim'
execute 'source' fnamemodify(expand('<sfile>'), ':h').'/control/manager_ctl.vim'
execute 'source' fnamemodify(expand('<sfile>'), ':h').'/control/platform_ctl.vim'
execute 'source' fnamemodify(expand('<sfile>'), ':h').'/control/editor_ctl.vim'
execute 'source' fnamemodify(expand('<sfile>'), ':h').'/control/jump_ctl.vim'
execute 'source' fnamemodify(expand('<sfile>'), ':h').'/control/utils_ctl.vim'
