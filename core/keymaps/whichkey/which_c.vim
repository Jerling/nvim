" vimscript
"
" which_c.vim
"
" Copyright (C) 2020 Jerling <linjieli001@qq.com>
"
" Distributed under terms of the MIT license.
"
" which key map for c


let g:which_key_map_c = {}
call which_key#register('c', "g:which_key_map_c")
let g:which_key_map_c.c = 'change current line/S'
let g:which_key_map_c.w = 'change to word end'
let g:which_key_map_c.0 = 'change to line start'
let g:which_key_map_c.o = 'open quickfix c'
let g:which_key_map_c.k = 'kill quickfix c'
let g:which_key_map_c.n = 'next quickfix c'
let g:which_key_map_c.p = 'prev quickfix c'
let g:which_key_map_c['^'] = 'change to first word'
let g:which_key_map_c['$'] = 'change to last word'
let g:which_key_map_c['i'] = {
			\ 'name' : '+inner-text-object'  ,
			\ 'w' : 'change current word'    ,
			\ '"' : 'change arround with "'  ,
			\ "'" : "change arround with '"  ,
			\ 'b' : 'change arround with )'  ,
			\ ')' : 'change arround with )'  ,
			\ ']' : 'change arround with ]'  ,
			\ 'B' : 'change arround with }'  ,
			\ '}' : 'change arround with }'  ,
			\ 's' : 'change current sentence', 
			\}
let g:which_key_map_c['a'] = {
			\ 'name' : '+outer-text-object',
			\ 'w' : 'change current word'  ,
			\ 'b' : "change arround with )",
			\ 'B' : "change arround with }",
			\}
