" vimscript
"
" keymaps.vim
"
" Copyright (C) 2020 Jerling <linjieli001@qq.com>
"
" Distributed under terms of the MIT license.
"
" all keymaps, annotate look whichkey.vim


" key controler
execute 'source' fnamemodify(expand('<sfile>'), ':h').'/key_ctl.vim'

" key binds(config)
execute 'source' fnamemodify(expand('<sfile>'), ':h').'/keymap/general_map.vim'
execute 'source' fnamemodify(expand('<sfile>'), ':h').'/keymap/leader_map.vim'
execute 'source' fnamemodify(expand('<sfile>'), ':h').'/keymap/local_map.vim'

" which key
execute 'source' fnamemodify(expand('<sfile>'), ':h').'/whichkey.vim'
