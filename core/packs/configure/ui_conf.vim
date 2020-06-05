" vimscript
"
" ui_conf.vim
"
" Copyright (C) 2020 Jerling <linjieli001@qq.com>
"
" Distributed under terms of the MIT license.
"
" setting UI pack


if g:ui#rainbow
	packadd! rainbow_parentheses
	au VimEnter * RainbowParenthesesToggle
	au Syntax * RainbowParenthesesLoadRound
	au Syntax * RainbowParenthesesLoadSquare
	au Syntax * RainbowParenthesesLoadBraces
endif

if g:ui#lightline
	packadd! lightline
	set laststatus=2
	set noshowmode
	" lightline
	let g:lightline = {
		\ 'mode_map': {
	  \		'n' : 'N',
	  \ 	'i' : 'I',
	  \ 	'R' : 'R',
	  \ 	'v' : 'V',
	  \ 	'V' : 'VL',
	  \ 	"\<C-v>": 'VB',
	  \ 	'c' : 'C',
	  \ 	's' : 'S',
	  \ 	'S' : 'SL',
	  \ 	"\<C-s>": 'SB',
	  \ 	't': 'T',
	  \ },
	  \ 'active': {
	  \   'left': [
	  \     [ 'mode', 'paste', 'readonly'],
		\     ['cwd', 'filename'],
	  \     ['gstatus', 'bstatus' , 'diagnostic',  'method' ]
	  \   ],
	  \   'right':[
	  \     [ 'filetype', 'fileencoding', 'line', 'percent'],
		\     ['datetime']
	  \   ],
	  \ },
		\ 'component': {
		\   'line': '%l/%L,%c'
		\ },
	  \ 'component_function': {
		\   'cwd': 'functions#CurDir',
	  \   'method': 'functions#LightlineMethod',
	  \   'blame': 'functions#LightlineGitBlame',
	  \   'gstatus': 'functions#LightlineGitGStatus',
	  \   'bstatus': 'functions#LightlineGitBStatus',
	  \   'datetime': 'functions#UpdateStatusBar',
	  \ }
		\ }
endif

if g:ui#goyo
	packadd! goyo
	packadd! limelight
	autocmd! User GoyoEnter Limelight
	autocmd! User GoyoLeave Limelight!
endif

if g:ui#signature
	packadd! signature
endif
