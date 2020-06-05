" vimscript
"
" leader_map.vim
"
" Copyright (C) 2020 Jerling <linjieli001@qq.com>
"
" Distributed under terms of the MIT license.
"
" leader key maps
"
nnoremap <silent><leader><localleader> :<C-u>Clap command<cr>

nnoremap <silent><leader>qw :wqa<cr>
nnoremap <silent><leader>qq :q<cr>
nnoremap <silent><leader>qQ :q!<cr>
nnoremap <silent><leader>f/ :FZF<CR>

nnoremap <leader>pa :packadd  
nnoremap <silent><leader>pu :PackUpdate<cr>
nnoremap <silent><leader>pr :PackClean<cr>
nnoremap <silent><leader>ps :PackStatus<cr>
nnoremap <leader>pc :Clap install-binary<cr>
nnoremap <leader>pC :Clap install-binary!<cr>

nnoremap <silent><leader>w- :ChooseWin<cr>
nnoremap <silent><leader>wx :ChooseWinSwap<cr>
nnoremap <silent><leader>wX :ChooseWinSwapStay<cr>

nnoremap <silent><leader>bk :bdelete!<cr>
nnoremap <silent><leader>bo :BcloseOthers<CR>
nnoremap <silent><leader>mm :Clap marks<cr>

" help
nnoremap <silent><leader>hM :Man <C-R>=expand("<cword>")<CR><CR>
vnoremap <silent><leader>hM :Man <C-R>=expand("<cword>")<CR><CR>
nnoremap <silent><leader>hm :vert Man <C-R>=expand("<cword>")<CR><CR>
vnoremap <silent><leader>hm :vert Man <C-R>=expand("<cword>")<CR><CR>
nnoremap <silent><leader>hp :set paste<cr>
vnoremap <silent><leader>hp :set paste<cr>
nnoremap <silent><leader>hP :set nopaste<cr>
vnoremap <silent><leader>hP :set nopaste<cr>

" clipboard
nnoremap <silent><leader>pY "+Y
tnoremap <silent><leader>pY "+Y
nnoremap <silent><leader>py "+yy
vnoremap <silent><leader>py "+y

nnoremap <silent><leader>pp "+p:%s/<c-v><c-m>$//g<cr>
tnoremap <silent><leader>pp <C-\><C-N>"+p:%s/<c-v><c-m>$//g<cr>
nnoremap <silent><leader>pP "+P:%s/<c-v><c-m>$//g<cr>
vnoremap <silent><leader>pp "+p:%s/<c-v><c-m>$//g<cr>
vnoremap <silent><leader>pP "+P:%s/<c-v><c-m>$//g<cr>


"===============================UI==================================
nnoremap <silent> <leader>os :<c-u>Startify<cr>

if g:jump#any_jump
	nnoremap <silent><Leader>cC :<C-u>Clap colors<CR>
endif

if g:ui#goyo
	nnoremap <silent><leader>gy :Goyo<cr>
	nnoremap <silent><leader>gY :Goyo<cr>
endif

"*******************************************************************


"==========================PLATFORM=================================
nnoremap <silent><leader>ft :CocCommand explorer<cr>
nnoremap <silent><leader>fc :execute 'CocCommand explorer' fnamemodify(expand('%'), ':h')<cr>
nmap <silent><leader>cr <Plug>(coc-rename)
xmap <silent><leader>fF  <Plug>(coc-format-selected)
nmap <silent><leader>fF :Format<cr>
nmap <silent><leader>fz :Fold<cr>
nmap <silent><leader>fZ :UnFold<cr>
nmap <silent><leader>oi :OR<cr>
nmap <silent><leader>en  <Plug>(coc-diagnostic-next)
nmap <silent><leader>ep  <Plug>(coc-diagnostic-prev)
nmap <silent><leader>ei  <Plug>(coc-diagnostic-info)

if exists("g:manager#coc_clap") && g:manager#coc_clap
	nnoremap <silent><leader>ca  :Clap coc_actions<cr>
	nnoremap <silent><leader>cd  :Clap coc_diagnostics<cr>
	nnoremap <silent><leader>ce  :Clap coc_extensions<cr>
	nnoremap <silent><leader>cc  :Clap coc_commands<cr>
	nnoremap <silent><leader>cL  :Clap coc_location<cr>
	nnoremap <silent><leader>co  :Clap coc_outline<cr>
	nnoremap <silent><leader>cs  :Clap coc_symbols<cr>
	nnoremap <silent><leader>cS  :Clap coc_services<cr>
else
	nnoremap <silent><leader>ca  :<C-u>CocList actions<cr>
	nnoremap <silent><leader>cd  :<C-u>CocList diagnostics<cr>
	nnoremap <silent><leader>ce  :<C-u>CocList extensions<cr>
	nnoremap <silent><leader>cc  :<C-u>CocList commands<cr>
	nnoremap <silent><leader>cL  :<C-u>CocList location<cr>
	nnoremap <silent><leader>co  :<C-u>CocList outline<cr>
	nnoremap <silent><leader>cs  :<C-u>CocList -I symbols<cr>
	nnoremap <silent> <leader>cS  :<C-u>CocList services<cr>
endif

nnoremap <silent><leader>cl  :<C-u>CocList<cr>
nnoremap <silent><leader>cm  :<C-u>CocList marketplace<cr>
nnoremap <silent><leader>cj  :<C-u>CocNext<CR>
nnoremap <silent><leader>ck  :<C-u>CocPrev<CR>
nnoremap <silent><leader>cp  :<C-u>CocListResume<CR>
nnoremap <silent><leader>oS  :CocCommand cSpell.toggleEnableSpellChecker<cr>
nnoremap <silent><leader>op  :CocList explPresets<CR>


nnoremap <silent><leader>oT :CocList todolist<cr>
vnoremap <silent><leader>oT :CocList todolist<cr>

nnoremap <silent><leader>gg :<C-u>CocList --normal gstatus<CR>
nmap     <silent><leader>gp <Plug>(coc-git-prevchunk)
nmap     <silent><leader>gn <Plug>(coc-git-nextchunk)
nmap     <silent><leader>gd <Plug>(coc-git-chunkinfo)
nmap     <silent><leader>gc <Plug>(coc-git-commit)

nmap <silent><leader>ec <Plug>(coc-cursors-position)
nmap <silent><leader>ew <Plug>(coc-cursors-word)
xmap <silent><leader>er <Plug>(coc-cursors-range)

nnoremap <silent><leader>od :call vimspector#Launch()<cr>
nnoremap <silent><leader>dc :call vimspector#Continue()<cr>
nnoremap <silent><leader>ds :call vimspector#Stop()<cr>
nnoremap <silent><leader>dr :call vimspector#Restart()<cr>
nnoremap <silent><leader>dp :call vimspector#Pause()<cr>
nnoremap <silent><leader>db :call vimspector#ToggleBreakpoint()<cr>
nnoremap <silent><leader>dB :call vimspector#ToggleBreakpoint({ trigger expr, hit count expr})<cr>
nnoremap <silent><leader>df :call vimspector#AddFunctionBreakpoint('<cexpr>')<cr>
nnoremap <silent><leader>do :call vimspector#StepOver()<cr>
nnoremap <silent><leader>di :call vimspector#StepInto()<cr>
nnoremap <silent><leader>dO :call vimspector#StepOut()<cr>
nnoremap <silent><leader>dk :VimspectorReset<cr>
"*******************************************************************


"=================================Editor============================
if g:editor#mundo
	nnoremap <silent><leader>fu :MundoToggle<CR>
endif

if g:editor#markdown_preview
	nnoremap <silent><leader>pm :MarkdownPreview<CR>
	nnoremap <silent><leader>pM :MarkdownPreviewStop<CR>
endif
"*******************************************************************


"=================================JMUP===============================
if g:jump#easy_jump
	map  <leader>jf <Plug>(easymotion-bd-f)
	nmap <leader>jj <Plug>(easymotion-overwin-f)
	map  <leader>jw <Plug>(easymotion-bd-w)
	nmap <leader>jb <Plug>(easymotion-overwin-w>
	map  <leader>jl <Plug>(easymotion-bd-jk)
	nmap <leader>jL <Plug>(easymotion-overwin-line)
endif

if g:jump#vista
	nnoremap <silent><leader>ov :Vista!!<cr>
endif

if g:jump#any_jump
	nnoremap <silent><leader>ja :AnyJump<CR>
	xnoremap <silent><leader>jv :AnyJumpVisual<CR>
	nnoremap <silent><leader>jA :AnyJumpBack<CR>
	nnoremap <silent><leader>jr :AnyJumpLastResults<CR>
endif

if g:jump#zeal
	nmap <leader>z <Plug>ZVKeyDocset
endif
"********************************************************************


"================================UTILS===============================
if utils#clap
	nnoremap <silent><leader>ff :<C-U>Clap filer<cr>
	nnoremap <silent><leader>fp :<C-U>Clap personalconf<cr>
	nnoremap <silent><leader>fe :<C-U>Clap files ~++finder=rg ~/.config/nvim<cr>
	nnoremap <silent><leader>fP :<C-U>Clap files ~++finder=rg ~/.local/share/nvim/site/pack<cr>
	nnoremap <silent><leader>bb :<C-u>Clap buffers<CR>
	nnoremap <silent><leader>sr :<C-u>Clap grep<CR>
	nnoremap <silent><leader>sf :<C-u>Clap files ++finder=rg --no-ignore --hidden --files<cr>
	nnoremap <silent><leader>sg :<C-u>Clap gfiles<CR>
	nnoremap <silent><leader>ss :<C-u>Clap grep2 ++query=<cr>
	nnoremap <silent><leader>sa :<C-u>Clap grep ++query=<cword><cr>
	nnoremap <silent><leader>fr :<C-u>Clap history<CR>
	nnoremap <silent><leader>sw :<C-u>Clap windows<CR>
	nnoremap <silent><leader>sl :<C-u>Clap loclist<CR>
	nnoremap <silent><leader>su :<C-u>Clap git_diff_files<CR>
	nnoremap <silent><leader>sc :<C-u>Clap command_history<CR>
	nnoremap <silent><leader>so :<C-u>Clap command_history<CR>
endif

if g:utils#deol
	nnoremap <silent><leader>ot :Deol<cr>
	vnoremap <silent><leader>ot :Deol<cr>
	nnoremap <silent><leader>oV :Deol -split=vertical<cr>
	vnoremap <silent><leader>oV :Deol -split=vertical<cr>
	nnoremap <silent><leader>of :Deol -split=floating<cr>
	vnoremap <silent><leader>of :Deol -split=floating<cr>
	vnoremap <silent><leader>gz :Deol lazygit<cr>
	nnoremap <silent><leader>gz :Deol lazygit<cr>
	vnoremap <silent><leader>ot :Deol<cr>
	nnoremap <silent><leader>oc :execute 'Deol' '-cwd='.fnamemodify(expand('%'), ':h')<CR>
	vnoremap <silent><leader>oc :execute 'Deol' '-cwd='.fnamemodify(expand('%'), ':h')<CR>
else
	nnoremap <silent><leader>ot :ternimal<cr>
	vnoremap <silent><leader>ot :ternimal<cr>
endif
"*******************************************************************


"============================MANAGER=================================
if g:manager#fugitive
	nnoremap <silent><leader>gG :Git 
	nnoremap <silent><leader>ga :Git add %:p<CR>
	nnoremap <silent><leader>gD :Gdiffsplit<CR>
	nnoremap <silent><leader>gC :Git commit<CR>
	nnoremap <silent><leader>gb :Git blame<CR>
	nnoremap <silent><leader>gf :Gfetch<CR>
	nnoremap <silent><leader>gs :Git<CR>
	nnoremap <silent><leader>gP :Gpush<CR>
	nnoremap <silent><leader>gl :Git log<CR>
endif
"******************************************************************* 
