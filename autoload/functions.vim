" vimscript
"
" functions.vim
"
" Copyright (C) 2020 Jerling <linjieli001@qq.com>
"
" Distributed under terms of the MIT license.
"
" Some useful functions


function! functions#LightlineGitBlame() abort
  let blame = get(b:, 'coc_git_blame', '')
  return winwidth(0) > 120 ? blame : ''
endfunction

function! functions#LightlineGitGStatus() abort
  let gstatus = get(g:, 'coc_git_status', '')
  return gstatus
endfunction

function! functions#LightlineGitBStatus() abort
  let bstatus = get(b:, 'coc_git_status', '')
  return winwidth(0) > 120 ? bstatus : ''
endfunction

function! functions#LightlineMethod() abort
  let method = get(b:,'coc_current_function','')
  " return blame
  return winwidth(0) > 120 ? method : ''
endfunction

let s:timer = timer_start(1000, 'functions#UpdateStatusBar',{'repeat':-1})
function! functions#UpdateStatusBar(...) abort
	  return winwidth(0) > 120 ? strftime("%Y-%m-%d %a %H:%M:%S") : strftime("%H:%M")
endfunction

function! functions#CurDir()
    let curdir = substitute(getcwd(), $HOME, "~", "g")
		return winwidth(0) > 120 ? curdir : ''
endfunction

command! BcloseOthers call functions#BufCloseOthers()
function! functions#BufCloseOthers()
	let l:currentBufNum   = bufnr("%")
	let l:alternateBufNum = bufnr("#")
	for i in range(1,bufnr("$"))
		if buflisted(i)
			if i!=l:currentBufNum
				execute("bdelete ".i)
			endif
		endif
	endfor
endfunction

function! functions#Show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction
