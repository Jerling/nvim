" vimscript
"
" manager_conf.vim
"
" Copyright (C) 2020 Jerling <linjieli001@qq.com>
"
" Distributed under terms of the MIT license.
"
" setting for manager pack


if g:manager#fugitive
	packadd! vim-fugitive
	nnoremap <silent> <Leader>ga :Git add %:p<CR>j
	nnoremap <silent> <Leader>gd :Gdiffsplit<CR>
	nnoremap <silent> <Leader>gc :Git commit<CR>
	nnoremap <silent> <Leader>gb :Git blame<CR>
	nnoremap <silent> <Leader>gf :Gfetch<CR>
	nnoremap <silent> <Leader>gs :Git<CR>
	nnoremap <silent> <Leader>gp :Gpush<CR>
endif

if g:manager#coc_clap
	packadd! coc_clap
endif

if g:manager#vimwiki
	packadd! vimwiki
	let g:vimwiki_listsyms = ' ○◐●✓'
	let g:vimwiki_listsym_rejected = '✗'
	let g:vimwiki_map_prefix = '<Localleader>w'
endif

if g:manager#markdown
	packadd! markdown
endif
