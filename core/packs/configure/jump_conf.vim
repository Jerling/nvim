" vimscript
"
" jump_conf.vim
"
" Copyright (C) 2020 Jerling <linjieli001@qq.com>
"
" Distributed under terms of the MIT license.
"
" setting for jump pack


if g:jump#any_jump
	packadd! any_jump
	let g:any_jump_disable_default_keybindings = 1
	let g:any_jump_remove_comments_from_results = 1
	let g:any_jump_ignored_files = ['*.tmp', '*.temp']
endif

if g:jump#easy_jump
	packadd! easymotion
endif

if g:jump#vista
	packadd! vista
	let g:vista#renderer#enable_icon = 1
	let g:vista_default_executive = 'coc'
	let g:vista_echo_cursor_strategy = 'floating_win'
	let g:vista_vimwiki_executive = 'markdown'
	let g:vista_executive_for = {
		\ 'vimwiki': 'markdown',
		\ 'pandoc': 'markdown',
		\ 'markdown': 'toc',
		\}	
endif

if g:jump#zeal
	packadd! zealvim
endif
