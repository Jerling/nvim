" vimscript
"
" which_local.vim
"
" Copyright (C) 2020 Jerling <linjieli001@qq.com>
"
" Distributed under terms of the MIT license.
"
" which key for localleader


let g:which_key_map_local = {}
call which_key#register(g:key_define#local, "g:which_key_map_local")

let g:which_key_map_local['S'] = {
			\ 'name' : '+session',
			\ 's' : 'save session',
			\ 'l' : 'load session',
			\ 'd' : 'delete session',
			\ 'c' : 'close seession',
			\}

let g:which_key_map_local['t'] = {
			\ 'name' : '+task/translator/template' ,
			\ 'l' : 'task list'                    ,
			\ 't' : 'translator'                   ,
			\ 'r' : 'translator and replace'       ,
			\ 'i' : 'insert template'              ,
			\ 'a' : 'insert head'                  ,
			\ 'b' : 'insert bottom'                ,
			\ 'w' : 'translator a word'                   ,
			\ 'p' : 'translation history'          ,
			\ }
if g:platform#asynctask
	let g:which_key_map_local.t.e = 'edit local task'
	let g:which_key_map_local.t.k = 'kill task'
	let g:which_key_map_local.t.b = "build current file"	
	let g:which_key_map_local.t.R = "run current file"	
endif
if g:utils#floatterm
	let g:which_key_map_local.t.n = 'new floating terminal'
	let g:which_key_map_local.t.h = 'hide floating terminal'
	let g:which_key_map_local.t.s = 'show floating terminal'
	let g:which_key_map_local.t.j = 'next floating terminal'
	let g:which_key_map_local.t.k = 'prev floating terminal'
	let g:which_key_map_local.t.q = 'quit floating terminal'
	let g:which_key_map_local.t.m = 'msg to floating terminal'
endif

let g:which_key_map_local['b'] = {
			\ 'name': '+blog/bookmark'    ,
			\ 'b' : 'open blog post'      ,
			\ 'j' : 'next bookmark'       ,
			\ 'k' : 'prev bookmark'       ,
			\ 't' : 'add/remove bookmark' ,
			\ 'a' : 'annotate bookmark'   ,
			\ 's' : 'show bookmark'       ,
			\}

if g:manager#vimwiki
	let g:which_key_map_local['w'] = {
				\ 'name' : '+wiki',
				\ 'w' : 'open wiki index'             ,
				\ 's' : 'select a wiki'               ,
				\ 'S' : 'search somthing'             ,
				\ 't' : 'open tab wiki'               ,
				\ 'i' : 'open daily wiki'             ,
				\ 'g' : 'generate tags'               ,
				\ 'a' : 'create a table'              ,
				\ 'y' : 'rename link'                 ,
				\ 'h' : 'convert to html'             ,
				\ 'd' : 'delete link'                 ,
				\ 'f' : 'finish a task or not'        ,
				\ 'hh' : 'convert to html and browser',
				\ ' ' : {
				\ 'name' : 'operator',
				\ 'i' : 'generate daily links',
				\ 't' : 'make daily note with tab',
				\ 'w' : 'make daily note',
				\ 'y' : 'make yesterday daily note',
				\ 'm' : 'make tomorrow daily note',
				\}
				\}
endif

if g:utils#calendar
	let g:which_key_map_local['o'] = {
				\ 'name': '+open',
				\ 'c': 'open calendar',
				\}
endif
