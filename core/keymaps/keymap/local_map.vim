" vimscript
"
" local_map.vim
"
" Copyright (C) 2020 Jerling <linjieli001@qq.com>
"
" Distributed under terms of the MIT license.
"
" localleader keymaps
"
"=================================UI=============================
nnoremap <silent><localleader>Ss :SSave<cr>
nnoremap <silent><localleader>Sl :SLoad<cr>
nnoremap <silent><localleader>Sd :SDelete<cr>
nnoremap <silent><localleader>Sc :SClose<cr>
nnoremap <silent><localleader>Ss :SSave<cr>
nnoremap <silent><localleader>Sl :SLoad<cr>
nnoremap <silent><localleader>Sd :SDelete<cr>
nnoremap <silent><localleader>Sc :SClose<cr>
"********************************************************************


"==============================PLATFORM===========================
nnoremap <localleader>Bb :CocCommand explorer --preset Blog<CR>
nmap <localleader>Bt <Plug>(coc-bookmark-toggle)
nmap <localleader>Ba <Plug>(coc-bookmark-annotate)
nmap <localleader>Bj <Plug>(coc-bookmark-next)
nmap <localleader>Bk <Plug>(coc-bookmark-prev)
nmap <localleader>Bs :CocList bookmark<cr>


if g:platform#asyncrun && g:platform#asynctask
	nnoremap <silent><localleader>tk :AsyncStop!<CR>
	nnoremap <silent><localleader>te :AsyncTaskEdit<CR>
	nnoremap <silent><localleader>tR :AsyncTask file-run<cr>
	nnoremap <silent><localleader>tb :AsyncTask file-build<cr>
endif
nnoremap <localleader>tl :CocList tasks<CR>
nmap <silent><localleader>tt <Plug>(coc-translator-p)
vmap <silent><localleader>tt <Plug>(coc-translator-pv)
nmap <silent><localleader>tr <Plug>(coc-translator-r)
vmap <silent><localleader>tr <Plug>(coc-translator-rv)
nmap <silent><localleader>tw :CocList translators<cr>
vmap <silent><localleader>tw :CocList translators<cr>
nmap <silent><localleader>tp :CocList translation<cr>
vmap <silent><localleader>tp :CocList translation<cr>

nmap <localleader>ti <Plug>(coc-template)
nmap <localleader>ta <Plug>(coc-template-top)
nmap <localleader>tb <Plug>(coc-template-bottom)
"********************************************************************


"=================================UTILS=============================
if g:utils#floatterm
	nnoremap   <silent><localleader>tn   :FloatermNew<CR>
	tnoremap   <silent><localleader>tn   <C-\><C-n>:FloatermNew<CR>
	nnoremap   <silent><localleader>tk   :FloatermPrev<CR>
	tnoremap   <silent><localleader>tk   <C-\><C-n>:FloatermPrev<CR>
	nnoremap   <silent><localleader>tj   :FloatermNext<CR>
	tnoremap   <silent><localleader>tj   <C-\><C-n>:FloatermNext<CR>
	nnoremap   <silent><localleader>ts   :FloatermShow<CR>
	tnoremap   <silent><localleader>ts   <C-\><C-n>:FloatermShow<CR>
	nnoremap   <silent><localleader>th   :FloatermHide<CR>
	tnoremap   <silent><localleader>th   <C-\><C-n>:FloatermHide<CR>
	nnoremap   <silent><localleader>tq   :FloatermKill<CR>
	tnoremap   <silent><localleader>tq   <C-\><C-n>:FloatermKill<CR>
	nnoremap   <silent><localleader>tm   :FloatermSend<CR>
	tnoremap   <silent><localleader>tm   <C-\><C-n>:FloatermSend<CR>
	if g:utils#clap
		nnoremap   <silent>   <localleader>tc   :Clap floaterm<CR>
		tnoremap   <silent>   <localleader>tc   <C-\><C-n>:Clap floaterm<CR>
	endif
endif

if g:utils#calendar
	nnoremap <silent><localleader>oc :Calendar<cr>
endif
"********************************************************************


"=================================MANAGER=============================
if g:manager#vimwiki
	nnoremap <silent><localleader>wS :VimwikiSearch 
	nnoremap <silent><localleader>wg :VimwikiGenerateTags<cr>
	nnoremap <silent><localleader>wa <esc>:VimwikiTable<cr>jli
	nmap <silent><C-Left> <Plug>VimwikiTableMoveColumnLeft
	nmap <silent><C-Right> <Plug>VimwikiTableMoveColumnRight
  nmap <localleader>wf <Plug>VimwikiToggleListItem
	vmap <localleader>wf <Plug>VimwikiToggleListItem  
endif
"*******************************************************************
