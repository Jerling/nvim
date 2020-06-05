" vimscript
"
" general_map.vim
"
" Copyright (C) 2020 Jerling <linjieli001@qq.com>
"
" Distributed under terms of the MIT license.
"
inoremap jk <esc>
tnoremap JK <C-\><C-n>

if g:general#auto_center
	" auto go center
	nnoremap <silent><BS> :noh<cr>zz
	vnoremap <silent><BS> :noh<cr>zz
	nnoremap <silent><esc> :nohl<cr>zz
	noremap	 <silent> j gjzz
	noremap  <silent> k gkzz
	noremap  <silent> n nzz
	noremap  <silent> <s-n> <s-n>zz
	noremap  <silent> * *zz
	noremap  <silent> # #zz
	noremap  <silent> <c-o> <c-o>zz
	noremap  <silent> <c-i> <c-i>zz
endif

"copy to end
nnoremap <silent>Y y$

if g:general#emacs
	" insert keymap like emacs
	inoremap <C-w> <C-[>diwa
	inoremap <C-h> <BS>
	inoremap <C-d> <Del>
	"inoremap <C-k> <ESC>d$a
	inoremap <C-u> <C-G>u<C-U>
	inoremap <C-b> <Left>
	inoremap <C-f> <Right>
	inoremap <C-n> <Down>
	inoremap <C-p> <Up>
	inoremap <C-a> <ESC>^a
	inoremap <C-e> <ESC>A
	inoremap <C-x>h <ESC>ggVG

	" nnoremap keymap like emacs
	nnoremap <C-x>h <ESC>ggVG

	" command line alias
	cnoremap <C-p> <Up>
	cnoremap <C-b> <Left>
	cnoremap <C-f> <Right>
	cnoremap <C-a> <Home>
	cnoremap <C-e> <End>
	cnoremap <C-d> <Del>
	cnoremap <C-h> <BS>
	cnoremap <C-t> <C-R>=expand("%:p:h"). "/"<CR>"
endif

" coc diagnostics
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gI <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" look up documentation
nnoremap <silent> K :call functions#Show_documentation()<CR>

omap ig <Plug>(coc-git-chunk-inner)
xmap ig <Plug>(coc-git-chunk-inner)
omap ag <Plug>(coc-git-chunk-outer)
xmap ag <Plug>(coc-git-chunk-outer)

" press <esc> to cancel.
nmap f <Plug>(coc-smartf-forward)
nmap F <Plug>(coc-smartf-backward)
nmap < <Plug>(coc-smartf-repeat)
nmap , <Plug>(coc-smartf-repeat-opposite)
