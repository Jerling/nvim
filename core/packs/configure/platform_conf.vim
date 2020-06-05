" vimscript
"
" platform_conf.vim
"
" Copyright (C) 2020 Jerling <linjieli001@qq.com>
"
" Distributed under terms of the MIT license.
"
" setting for platform pack

packadd! coc
" coc extensions
let g:coc_global_extensions = [
\  'coc-marketplace', 'coc-json', 'coc-tabnine',
\  'coc-todolist', 'coc-tasks', 'coc-snippets',
\  'coc-explorer', 'coc-calc', 'coc-git',
\  'coc-lists', 'coc-spell-checker', 'coc-translator',
\  'coc-vimlsp', 'coc-yank', 'coc-highlight',
\  'coc-bookmark', 'coc-template', 'coc-project',
\  'coc-pairs', 'coc-smartf'
\  ]

" TextEdit might fail if hidden is not set.
set hidden

" Some servers have issues with backup files, see #649.
set nobackup
set nowritebackup

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
set signcolumn=yes

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" if use vimwiki, then use <c-j> completion
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
			\ pumvisible() ? "\<C-n>" :
			\ <SID>check_back_space() ? "\<TAB>" :
			\ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current
" position. Coc only does snippet and additional edit on confirm.
" <cr> could be remapped by other vim plugin, try `:verbose imap <CR>`.
if !g:platform#custom_complete
	if exists('*complete_info')
		inoremap <expr> <CR> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
	else
		inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
	endif
endif

" tasks
if g:platform#asyncrun || g:platform#asynctask
	packadd! asyncrun
	packadd! asynctasks
	let g:asyncrun_open = 6
	let g:asynctasks_term_rows = 10
	let g:asynctasks_term_cols = 80
	let g:asynctasks_term_pos = 'right'
endif

autocmd CursorHold * silent call CocActionAsync('highlight')

if g:platform#vimspector
	packadd! vimspector
endif

augroup Smartf
  autocmd User SmartfEnter :hi Conceal ctermfg=220 guifg=#6638F0
  autocmd User SmartfLeave :hi Conceal ctermfg=239 guifg=#504945
augroup end

command! -nargs=0 Format :call CocAction('format')
command! -nargs=? Fold   :call CocAction('fold', <f-args>)
command! -nargs=? UnFold :call CocAction('unfold', <f-args>)
command! -nargs=0 OR     :call CocAction('runCommand', 'editor.action.organizeImport')"

augroup FormatGroup
  autocmd!
  autocmd FileType c,cpp,python,json,sh setl formatexpr=CocAction('formatSelected')
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end
