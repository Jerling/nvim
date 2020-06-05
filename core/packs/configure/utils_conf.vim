" vimscript
"
" utils_conf.vim
"
" Copyright (C) 2020 Jerling <linjieli001@qq.com>
"
" Distributed under terms of the MIT license.
"
" settings for utils pack

if g:utils#clap
	packadd! clap
	let g:clap_provider_personalconf = {
				\ 'source': [
				\ g:personal_dir.'/control.vim',
				\ g:personal_dir.'/config.vim',
				\ g:personal_dir.'/keymap.vim',
				\ g:personal_dir.'/private.vim',
				\ g:personal_dir.'/gui_config.vim',
				\ '~/.bashrc'
				\],
				\ 'sink': 'e',
				\}
endif

if g:utils#floatterm
	packadd! floaterm
	let g:floaterm_rootmarkers = ['.git', '.ccls', '.vim']
endif

if g:utils#snippets
	packadd! snippets
endif

if g:utils#choosewin
	packadd! choosewin
endif

if g:utils#caw
	packadd! caw
endif

if g:utils#calendar
	packadd! calendar
endif

if g:utils#whichkey
	packadd! which_key
	let g:key_leader = 1
	let g:key_local = 1
	let g:key_c = 1
	let g:key_d = 1
	let g:key_g = 1
	let g:key_z = 1
endif

if g:utils#deol
	packadd! deol
endif
