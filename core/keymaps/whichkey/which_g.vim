" vimscript
"
" which_g.vim
"
" Copyright (C) 2020 Jerling <linjieli001@qq.com>
"
" Distributed under terms of the MIT license.
"
" which key map for g


let g:which_key_map_g = {}
call which_key#register('g', "g:which_key_map_g")
let g:which_key_map_g.g = 'go head'
let g:which_key_map_g.a = 'ascii/unicode'
let g:which_key_map_g.8 = 'utf-8'
let g:which_key_map_g.o = 'open quickfix l'
let g:which_key_map_g.O = 'close quickfix l'
let g:which_key_map_g.n = 'next quickfix l'
let g:which_key_map_g.p = 'prev quickfix l'
let g:which_key_map_g.e = 'prev word end'
let g:which_key_map_g.f = 'go file'
let g:which_key_map_g.c = 'which_key_ignore'
let g:which_key_map_g.I = 'implementation'
let g:which_key_map_g.d = 'definition'
let g:which_key_map_g.r = 'references'
let g:which_key_map_g.y = 'type define'
let g:which_key_map_g.x = 'browser courrent url'
let g:which_key_map_g.t = 'next tab'
let g:which_key_map_g.T = 'prev tab'
let g:which_key_map_g.z = 'look up in zeal'
let g:which_key_map_g.j = 'next line ignore auto enter'
let g:which_key_map_g.k = 'prev line ignore auto enter'
let g:which_key_map_g['%'] = 'which_key_ignore'
let g:which_key_map_g['u'] = {
			\ 'name' : '+exchange-lower',
			\ 'u' : 'whole line',
			\ 'w' : 'a word',
			\ 'i' : {
			\   'name' : '+text_object',
			\   'w' : 'whole word',
			\}
			\}
let g:which_key_map_g['U'] = {
			\ 'name' : '+exchange-upper',
			\ 'U' : 'whole line',
			\ 'w' : 'a word',
			\ 'i' : {
			\   'name' : '+text_object',
			\   'w' : 'whole word',
			\}
			\}

if g:manager#vimwiki
	let which_key_map_g['l'] = {
				\ 'name' : '+vimwiki-list-item'  ,
				\ ' ': 'remove checkbox'  ,
				\ 'n': 'increase status'      ,
				\ 'p': 'Decrease status'      ,
				\ 'l': 'increase level'       ,
				\ 'h': 'decrease level'       ,
				\ 'r': 'renumber'             ,
				\ '*': 'changed symbol to *'  ,
				\ '#': 'changed symbol to #'  ,
				\ '-': 'changed symbol to -'  ,
				\ '1': 'changed symbol to 1.' ,
				\ 'a': 'changed symbol to a)' ,
				\ 'A': 'changed symbol to ~)' ,
				\ 'i': 'changed symbol to i)' ,
				\ 'I': 'changed symbol to I)' ,
				\ 'x': 'toggle checkbox',
				\}
	let g:which_key_map_g['L'] = {
				\ 'name' : '+vimwiki-whole-level',
				\ ' ': 'Remove checkbox'    ,
				\ 'l': 'increase level'       ,
				\ 'h': 'decrease level'       ,
				\ 'r': 'renumber'             ,
				\ '*': 'changed symbol to *'  ,
				\ '#': 'changed symbol to #'  ,
				\ '-': 'changed symbol to -'  ,
				\ '1': 'changed symbol to 1.' ,
				\ 'a': 'changed symbol to a)' ,
				\ 'A': 'changed symbol to ~)' ,
				\ 'i': 'changed symbol to i)' ,
				\ 'I': 'changed symbol to I)' ,
				\}
	let g:which_key_map_g['q'] = {
				\ 'name' : '+wiki-table-format',
				\ 'q' : "format table"
				\}
	let g:which_key_map_g['w'] = {
				\ 'name' : '+wiki-table-align',
				\ 'w' : "table align"
				\}
endif
