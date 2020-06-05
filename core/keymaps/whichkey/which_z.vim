" vimscript
"
" which_z.vim
"
" Copyright (C) 2020 Jerling <linjieli001@qq.com>
"
" Distributed under terms of the MIT license.
"
" which key map for z


let g:which_key_map_z = {}
call which_key#register('z', "g:which_key_map_z")
let g:which_key_map_z.i = 'delete floding'
let g:which_key_map_z.a = 'toggle floding'
let g:which_key_map_z.A = 'toggle floding recursive'
let g:which_key_map_z.c = 'flod current cursor'
let g:which_key_map_z.C = 'toggle all current cursor'
let g:which_key_map_z.d = 'delete cursor floding'
let g:which_key_map_z.D = 'delete cursor floding recursive'
let g:which_key_map_z.E = 'delete floding'
let g:which_key_map_z.m = 'flod one layer'
let g:which_key_map_z.M = 'flod all layer'
let g:which_key_map_z.r = 'open one layer'
let g:which_key_map_z.R = 'open all layer'
let g:which_key_map_z.o = 'open cursor one layer'
let g:which_key_map_z.O = 'open cursor all layer'
let g:which_key_map_z.r = 'adjust cursor to center'
let g:which_key_map_z.b = 'adjust cursor to bottom'
let g:which_key_map_z.t = 'adjust cursor to top'
