" vimscript
"
" whichkey.vim
"
" Copyright (C) 2020 Jerling <linjieli001@qq.com>
"
" Distributed under terms of the MIT license.
"
" whick key map

if g:utils#whichkey
	if g:key_leader
	  execute 'source' fnamemodify(expand('<sfile>'), ':h').'/whichkey/which_leader.vim'
	endif
	if g:key_local
	  execute 'source' fnamemodify(expand('<sfile>'), ':h').'/whichkey/which_local.vim'
	endif
	if g:key_c
	  execute 'source' fnamemodify(expand('<sfile>'), ':h').'/keymap/c_map.vim'
	  execute 'source' fnamemodify(expand('<sfile>'), ':h').'/whichkey/which_c.vim'
	endif
	if g:key_d
	  execute 'source' fnamemodify(expand('<sfile>'), ':h').'/keymap/d_map.vim'
	  execute 'source' fnamemodify(expand('<sfile>'), ':h').'/whichkey/which_d.vim'
	endif
	if g:key_g
	  execute 'source' fnamemodify(expand('<sfile>'), ':h').'/keymap/g_map.vim'
	  execute 'source' fnamemodify(expand('<sfile>'), ':h').'/whichkey/which_g.vim'
	endif
	if g:key_z
	  execute 'source' fnamemodify(expand('<sfile>'), ':h').'/keymap/z_map.vim'
	  execute 'source' fnamemodify(expand('<sfile>'), ':h').'/whichkey/which_z.vim'
	endif
endif
