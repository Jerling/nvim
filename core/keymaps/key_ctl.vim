" vimscript
"
" key_ctl.vim
"
" Copyright (C) 2020 Jerling <linjieli001@qq.com>
"
" Distributed under terms of the MIT license.
"
" which key should register to show


" maybe remap in personal config
if !exists("g:key_define#leader")
	let g:key_define#leader = 'SPC'
endif
if !exists("g:key_define#local")
	let g:key_define#local = ';'
endif

if g:key_define#leader == 'SPC'
	let g:mapleader = "\<space>"
else
	let g:mapleader = g:key_define#leader
endif

let g:maplocalleader = g:key_define#local

if g:key_leader
	if g:key_define#leader == 'SPC'
		nnoremap <silent> <leader>      :<c-u>WhichKey '<space>'<CR>
		vnoremap <silent> <leader>      :<c-u>WhichKeyVisual '<space>'<CR>
	else		
		nnoremap <silent> <leader>      :<c-u>WhichKey g:key_define#leader<CR>
	  vnoremap <silent> <leader>      :<c-u>WhichKeyVisual g:key_define#leader<CR>
	endif
endif

if g:key_local
	nnoremap <silent> <localleader> :<c-u>WhichKey  g:key_define#local<CR>
	vnoremap <silent> <localleader> :<c-u>WhichKeyVisual  g:key_define#local<CR>
endif

if g:key_c
	nnoremap <silent> c      :<c-u>WhichKey 'c'<CR>
	vnoremap <silent> c      :<c-u>WhichKey 'c'<CR>
endif
if g:key_d
	nnoremap <silent> d      :<c-u>WhichKey 'd'<CR>
	vnoremap <silent> d      :<c-u>WhichKey 'd'<CR>
endif
if g:key_g
	nnoremap <silent> g      :<c-u>WhichKey 'g'<CR>
	vnoremap <silent> g      :<c-u>WhichKey 'g'<CR>
endif
if g:key_z
	nnoremap <silent> z      :<c-u>WhichKey 'z'<CR>
	vnoremap <silent> z      :<c-u>WhichKey 'z'<CR>
endif
