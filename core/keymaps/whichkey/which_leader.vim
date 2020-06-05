" vimscript
"
" which_leader.vim
"
" Copyright (C) 2020 Jerling <linjieli001@qq.com>
"
" Distributed under terms of the MIT license.
"
" which key for leader


let g:which_key_map = {}
if g:key_define#leader == 'SPC'
	call which_key#register('<space>', "g:which_key_map")
else
	call which_key#register(g:key_define#leader, "g:which_key_map")
endif

let g:which_key_map['f'] = {
			\ 'name' : '+files',
			\ 's' : ['update'  , 'save current buffer'],
			\ 'a' : ['ggVG'  , 'select all']      ,
			\ 'S' : ['wa' , 'save all buffers']   ,
			\ 'f' : 'files filter'                ,
			\ 'F' : 'format'                      ,
			\ 'z' : 'fold with arg'               ,
			\ 'Z' : 'unfold'                      ,
			\ 't' : 'project file explore'                ,
			\ 'c' : 'current file explore'                ,
			\ '/' : 'find file with fzf'          ,
			\ 'p' : 'edit personal conf'          ,
			\ 'e' : 'edit nvim conf'          ,
			\ 'P' : 'edit packages'          ,
			\ }
if g:editor#mundo
	let g:which_key_map.f.u = "file modify history"	
endif
if g:utils#clap
	let g:which_key_map[g:key_define#local] = "commands"
	let g:which_key_map.f.f = "files"
	let g:which_key_map.f.r = "recent files"
endif

let g:which_key_map['w'] = {
			\ 'name' : '+windows' ,
			\ 'w' : ['<C-W>w'     , 'next window']           ,
			\ 'W' : ['<C-W>W'     , 'prev window']           ,
			\ 'c' : ['<C-W>c'     , 'delete-window']         ,
			\ 'o' : ['<C-W>o'     , 'close other window']    ,
			\ '2' : ['<C-W>v'     , 'layout-double-columns'] ,
			\ 'h' : ['<C-W>h'     , 'window-left']           ,
			\ 'j' : ['<C-W>j'     , 'window-below']          ,
			\ 'l' : ['<C-W>l'     , 'window-right']          ,
			\ 'k' : ['<C-W>k'     , 'window-up']             ,
			\ 'H' : ['<C-W>5<'    , 'expand-window-left']    ,
			\ 'J' : ['resize +5'  , 'expand-window-below']   ,
			\ 'L' : ['<C-W>5>'    , 'expand-window-right']   ,
			\ 'K' : ['resize -5'  , 'expand-window-up']      ,
			\ '=' : ['<C-W>='     , 'balance-window']        ,
			\ 's' : ['<C-W>s'     , 'split-window-below']    ,
			\ 'v' : ['<C-W>v'     , 'split-window-vertical'] ,
			\ }
if g:utils#choosewin
	let g:which_key_map.w.x = 'swap window'
	let g:which_key_map.w.X =  'swap window stay'
endif

let g:which_key_map['t'] = {
			\ 'name' : '+tabs' ,
			\ 't' : [':tabnew'   , 'new tab']        ,
			\ 'a' : [':tabs'     , 'all tabs']       ,
			\ 'n' : [':tabn'     , 'next tab']       ,
			\ 'p' : [':tabp'     , 'next tab']       ,
			\ 'c' : [':tabc'     , 'close tab']      ,
			\ 'o' : [':tabo'     , 'close other tab'],
			\ 'h' : [':tabfirst' , 'first tab']      ,
			\ 'l' : [':tablast'  , 'last tab']       ,
			\ 's' : [':tab split', 'split tab']      ,
			\ '1' : [':tabn 1'   , 'tab 1']          ,
			\ '2' : [':tabn 2'   , 'tab 2']          ,
			\ '3' : [':tabn 3'   , 'tab 3']          ,
			\ '4' : [':tabn 4'   , 'tab 4']          ,
			\ '5' : [':tabn 5'   , 'tab 5']          ,
			\ '6' : [':tabn 6'   , 'tab 6']          ,
			\ '7' : [':tabn 7'   , 'tab 7']          ,
			\ '8' : [':tabn 8'   , 'tab 8']          ,
			\ '9' : [':tabn 9'   , 'tab 9']          ,
			\ }

let g:which_key_map['b'] = {
			\ 'name' : '+buffer' ,
			\ 'd' : ['bdelete'   , 'delete-buffer']      ,
			\ 'D' : ['bwipe'     , 'delete-buffer-full'] ,
			\ 'f' : ['bfirst'    , 'first-buffer']       ,
			\ 'h' : ['Startify'  , 'home-buffer']        ,
			\ 'l' : ['blast'     , 'last-buffer']        ,
			\ 'n' : ['bnext'     , 'next-buffer']        ,
			\ 'p' : ['bprevious' , 'previous-buffer']    ,
			\ 'b' : 'all buffers'												 ,
			\ 'o' : 'kill other buffers'                 ,
			\ }
let g:which_key_map['b'].k = 'kill buffer'

let g:which_key_map['p'] = {
			\ 'name' : '+packages/preview'   ,
			\ 'a': 'add a plugin'            ,
			\ 'c': 'install clap binary'     ,
			\ 'C': 'install clap pre-build'  ,
			\ 'u': 'package update'                  ,
			\ 's': 'package status'                  ,
			\ 'r': 'remove plugin'                  ,
			\ 'p': 'paste from clipboard'                    ,
			\ 'P': 'past up from clipboard'                 ,
			\ 'Y': 'copy to end in clipboard',
			\ 'y': 'copy a line in clipboard',
			\ }
if g:editor#markdown_preview
	let g:which_key_map.p.m = "preview markdown"
	let g:which_key_map.p.M = "stop preview markdown"
endif

let g:which_key_map['g'] = {
			\ 'name' : '+git/goyo'   ,
			\ 'g' : 'coc-git staus'  ,
			\ 'p' : 'prev chunk'     ,
			\ 'n' : 'next chunk'     ,
			\ 'd' : 'chunk diff'     ,
			\ 'c' : 'coc-git commit' ,
			\ 'z' : 'lazy git' ,
			\ }
if g:manager#fugitive
	let g:which_key_map.g.a = 'Git add'
	let g:which_key_map.g.G = 'Git '
	let g:which_key_map.g.C = 'Git commit'
	let g:which_key_map.g.f = 'Git fetch'
	let g:which_key_map.g.s = 'Git status'
	let g:which_key_map.g.l = 'Git log'
	let g:which_key_map.g.D = 'Git diff split'
	let g:which_key_map.g.P = 'Git push'
endif
if g:ui#goyo
	let g:which_key_map.g.y = 'Goyo mode'
	let g:which_key_map.g.Y = 'exit Goyo mode'
endif


let g:which_key_map['e'] = {
			\ 'name' : '+error' ,
			\ 'a' : 'all errors'          ,
			\ 'n' : 'next error'          ,
			\ 'p' : 'prev error'          ,
			\ 'i' : 'error info'          ,
			\ 'c' : 'edit cursor position',
			\ 'w' : 'edit cursor word'    ,
			\ 'r' : 'edit cursor range'   ,
			\ }
			
let g:which_key_map['c'] = {
			\ 'name' : '+coc/changes' ,
			\ 'c' : 'CocCommand'		  ,
			\ 'd' : 'diagnostics'  	  ,
			\ 'e' : 'extensions'   	  ,
			\ 'l' : 'CocList'      	  ,
			\ 'L' : 'Location'     	  ,
			\ 'o' : 'Outline'      	  ,
			\ 's' : 'Symbols'      	  ,
			\ 'S' : 'Services'     	  ,
			\ 'j' : 'CocNext'      	  ,
			\ 'k' : 'CocPre'       	  ,
			\ 'p' : 'CocListResume'	  ,
			\ 'r' : 'coc-rename'      ,
			\ 'm' : 'coc marketplace' ,
			\ }

let g:which_key_map['o'] = {
			\ 'name' : '+open/organize'		 ,
			\ 's' : 'Startify'          	 ,
			\ 'S' : 'spell check'       	 ,
			\ 'p' : 'open presets'      	 ,
			\ 'i' : 'organize imports'  	 ,
			\ 'r' : 'open ranger'       	 ,
			\ 't' : 'open ternimal'     	 ,
			\ 'T' : 'open todo lists'   	 ,
			\ }
if g:jump#vista
	let g:which_key_map.o.v = 'open vista(symbols)'
endif
if g:utils#deol
	let g:which_key_map.o.c = 'open terminal in current buffer dir'
	let g:which_key_map.o.V = 'open terminal with vertical'
	let g:which_key_map.o.f = 'open terminal with floating'
endif
if g:platform#vimspector
	let g:which_key_map.o.d = 'open debug'
endif

let g:which_key_map['j'] = {
			\ 'name' : '+jump' ,
			\ }
if g:jump#easy_jump
	let g:which_key_map.j.f = 'jump a char forward'
	let g:which_key_map.j.j = 'jump a char back'
	let g:which_key_map.j.w = 'jump a word forward'
	let g:which_key_map.j.b = 'jump a word back'
	let g:which_key_map.j.l = 'jump a line forward'
	let g:which_key_map.j.L = 'jump a line back'
endif
if g:jump#any_jump
	let g:which_key_map.j.a = 'any jump'
	let g:which_key_map.j.A = 'any jump back'
	let g:which_key_map.j.v = 'any jump visual'
	let g:which_key_map.j.r = 'any jump last results'
endif
let g:which_key_map['h'] = {
			\ 'name' : "+help",
			\ 'M' : 'Man current word',
			\ 'm' : 'Man current word vertical',
			\}

if g:utils#clap
	let g:which_key_map['s'] = {
				\ 'name' : '+search' ,
				\ 's' : 'search with grep2',
				\ 'r' : 'search with rg'   ,
				\ 'f' : 'priject files'    ,
				\ 'g' : 'git files'        ,
				\ 'a' : 'a current word'   ,
				\ 'w' : 'windows'          ,
				\ 'l' : 'loclist'          ,
				\ 'u' : 'git diff files'   ,
				\ 'c' : 'command history'  ,
				\ }
endif

let g:which_key_map['q'] = {
			\ 'name' : '+quit'  ,
			\ 'w' : 'quit with wirte'    ,
			\ 'q' : 'quit without wirte' ,
			\ 'Q' : 'force quit'         ,
			\}

if g:platform#vimspector
	let g:which_key_map['d'] = {
				\ 'name' : '+debug'                  ,
				\ 'c' : 'continue'                   ,
				\ 's' : 'stop'                       ,
				\ 'r' : 'restart'                    ,
				\ 'p' : 'pause'                      ,
				\ 'b' : 'toggle breakpoint'          ,
				\ 'B' : 'toggle condition breakpoint',
				\ 'f' : 'toggle function breakpoint' ,
				\ 'o' : 'step over'                  ,
				\ 'i' : 'step in'                    ,
				\ 'O' : 'step out'                   ,
				\ 'k' : 'quit debug',
				\}
endif

if g:ui#signature
	let g:which_key_map['m'] = {
				\ 'name' : '+marks' ,
				\ 'm' : 'list all marks'                           ,
				\ ',' : ['m\,' , 'place next avaliable mark']      ,
				\ '.' : ['m.', 'add/remove mark']                  ,
				\ '-' : ['m\-', 'delete all mark for current line'],
				\ 'p' : ['[`', 'prev mark']                        ,
				\ 'n' : [']`', 'next mark']                        ,
				\ 'N' : ['`]', 'prev alphabetical order mark']     ,
				\ 'P' : ['`[', 'next alphabetical order mark']     ,
				\ '/' : ['m/', 'marks for current line']           ,
				\ '?' : ['m?', 'marks for current buffer']         ,
				\ 't' : [']\-', 'next same type mark']             ,
				\ 'T' : ['[\-', 'prev same type mark']             ,
				\ 'a' : ['[=', 'next any mark']                    ,
				\ 'A' : [']=', 'pre any mark']                     ,
				\}
endif

if g:jump#zeal
	let g:which_key_map.z = 'look in zeal'
endif
