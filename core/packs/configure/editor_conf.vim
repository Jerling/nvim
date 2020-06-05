" vimscript
"
" editor_conf.vim
"
" Copyright (C) 2020 Jerling <linjieli001@qq.com>
"
" Distributed under terms of the MIT license.
"
" setting for editor pack


if g:editor#mundo
	packadd! mundo
	set undofile swapfile
	set undodir=~/.cache/vim/undo,/tmp
endif

if g:editor#markdown_preview
	packadd! markdown-preview.nvim
endif

if g:editor#sandwich
	packadd! sandwich
endif
