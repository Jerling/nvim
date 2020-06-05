" vimscript
"
" g_map.vim
"
" Copyright (C) 2020 Jerling <linjieli001@qq.com>
"
" Distributed under terms of the MIT license.
"
" which key map for g


nmap gg gg
vmap gg gg
nmap ga ga
vmap ga ga
nmap g8 g8
vmap g8 g8
nmap gf gf
vmap gf gf
nmap gj gj
vmap gj gj
nmap gk gk
vmap gk gk
nmap ge ge
vmap ge ge
nmap gt gt
vmap gt gt
nmap gT gT
vmap gT gT
nmap guu guu
vmap guu guu
nmap guw guw
vmap guw guw
nmap guiw guiw
vmap guiw guiw
nmap gUU gUU
vmap gUU gUU
nmap gUw gUw
vmap gUw gUw
nmap gUiw gUiw
vmap gUiw gUiw
vmap g<C-G> g<C-G>

nnoremap <silent> go :lopen<cr>
vnoremap <silent> go :lopen<cr>
nnoremap <silent> gO :lclose<cr>
vnoremap <silent> gO :lclose<cr>
nnoremap <silent> gp :lprev<cr>
vnoremap <silent> gp :lprev<cr>
nnoremap <silent> gn :lnext<cr>
vnoremap <silent> gn :lnext<cr>

if g:jump#zeal
	nmap gz <Plug>Zeavim
	vmap gz <Plug>ZVVisSelection
endif
