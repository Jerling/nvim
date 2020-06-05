" vimscript
"
" main.vim
"
" Copyright (C) 2020 Jerling <linjieli001@qq.com>
"
" Distributed under terms of the MIT license.
"
" default setting 

let s:person_private = g:personal_dir.'/private.vim'
let s:person_control = g:personal_dir.'/control.vim'
let s:person_config  = g:personal_dir.'/config.vim'
let s:person_keymap  = g:personal_dir.'/keymap.vim'

execute 'source' fnamemodify(expand('<sfile>'), ':h').'/general.vim'
execute 'source' fnamemodify(expand('<sfile>'), ':h').'/filetype.vim'
" personal plugin must be behand packs_ctf.vim, for turn off some plugin
if filereadable(s:person_private)
	execute 'source' s:person_private
endif
execute 'source' fnamemodify(expand('<sfile>'), ':h').'/packs/packs_ctl.vim'

" personal plugin must be behand packs_ctf.vim, for turn off some plugin
if filereadable(s:person_control)
	execute 'source' s:person_control
endif

execute 'source' fnamemodify(expand('<sfile>'), ':h').'/packs/packs_conf.vim'

" personal config must be behand packs_conf.vim, for replace some config
if filereadable(s:person_config)
	execute 'source' s:person_config
endif

execute 'source' fnamemodify(expand('<sfile>'), ':h').'/keymaps/keymaps.vim'

" personal keymap must be behand packs_conf.vim, for replace some keymap
if filereadable(s:person_config)
	execute 'source' s:person_keymap
endif
