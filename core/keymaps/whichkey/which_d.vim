" vimscript
"
" which_d.vim
"
" Copyright (C) 2020 Jerling <linjieli001@qq.com>
"
" Distributed under terms of the MIT license.
"
" which key map for d


let g:which_key_map_d = {}
call which_key#register('d', "g:which_key_map_d")
let g:which_key_map_d.d = 'delete current line/S'
let g:which_key_map_d.m = 'delete a mark with input key'
let g:which_key_map_d.w = 'delete to word end'
let g:which_key_map_d.0 = 'delete to line start'
let g:which_key_map_d['gg'] = 'delete to start'
let g:which_key_map_d.G = 'delete to end'
let g:which_key_map_d['^'] = 'delete to first word'
let g:which_key_map_d['$'] = 'delete to last word'
let g:which_key_map_d['{'] = 'delete prev pragrah'
let g:which_key_map_d['}'] = 'delete next pragrah'
let g:which_key_map_d['i'] = {
			\ 'name' : '+inner-text-object'  ,
			\ 'w' : 'delete current word'    ,
			\ '"' : 'delete arround with "'  ,
			\ "'" : "delete arround with '"  ,
			\ 'b' : 'delete arround with )'  ,
			\ ')' : 'delete arround with )'  ,
			\ ']' : 'delete arround with ]'  ,
			\ 'B' : 'delete arround with }'  ,
			\ '}' : 'delete arround with }'  ,
			\ 's' : 'delete current sentence', 
			\}
let g:which_key_map_d['a'] = {
			\ 'name' : '+outer-text-object',
			\ 'w' : 'delete current word'  ,
			\ 'b' : "delete arround with )",
			\ 'B' : "delete arround with }",
			\}
