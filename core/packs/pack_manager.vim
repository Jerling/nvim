
let g:pack_path = stdpath('data').'/site'
let g:pack_name = 'all'

function! PackInit() abort
  packadd minpac

  call minpac#init()
  call minpac#add('k-takata/minpac', {'type': 'opt'})

  call minpac#init({'dir':g:pack_path, 'package_name': 'all'})
	call minpac#add('mhinz/vim-startify',
				\{'type': 'start', 'nanme': 'startify'})
	call minpac#add('flazz/vim-colorschemes',
				\{'type': 'opt', 'name': 'colorschemes'})
	call minpac#add('itchyny/lightline.vim', 
				\{'type': 'opt', 'name': 'lightline'})
	call minpac#add('junegunn/limelight.vim',
				\{'type': 'opt', 'name': 'limelight'})
	call minpac#add('kien/rainbow_parentheses.vim',
				\{'type': 'opt', 'name': 'rainbow_parentheses'})
	call minpac#add('junegunn/goyo.vim', 
				\{'type': 'opt', 'name': 'goyo'})

	"call minpac#init({'dir':g:pack_path, 'package_name': 'jump'})
	call minpac#add('easymotion/vim-easymotion', 
				\{'type':'opt', 'name': 'easymotion'})
	call minpac#add('pechorin/any-jump.vim',
				\{'type':'opt', 'name': 'any_jump'})
	call minpac#add('KabbAmine/zeavim.vim',
				\{'type':'opt', 'name': 'zealvim'})
	call minpac#add('liuchengxu/vista.vim',
				\{'type':'opt', 'name': 'vista'})
	call minpac#add('kshenoy/vim-signature',
				\{'type': 'opt', 'name': 'signature'})
	call minpac#add('t9md/vim-choosewin',
				\{'type': 'opt', 'name': 'choosewin'})

	"call minpac#init({'dir':g:pack_path, 'package_name': 'editor'})
	call minpac#add('vimwiki/vimwiki',
				\{'type':'opt', 'name': 'vimwiki'})
	call minpac#add('plasticboy/vim-markdown',
				\{'type':'opt', 'name': 'markdown'})
	call minpac#add('iamcco/markdown-preview.nvim',
				\{'type':'opt', 'do': 'call mkdp#util#install()'})
	call minpac#add('machakann/vim-sandwich',
				\{'type':'opt', 'name': 'sandwich'})
	call minpac#add('tyru/caw.vim',
				\{'type': 'opt', 'name': 'caw'})

	"call minpac#init({'dir':g:pack_path, 'package_name': 'manager'})
	call minpac#add('itchyny/calendar.vim',
				\{'type': 'opt', 'name': 'calendar'})
	call minpac#add('simnalamburt/vim-mundo',
				\{'type':'opt', 'name': 'mundo'})
	call minpac#add('liuchengxu/vim-which-key',
				\{'type': 'opt', 'name': 'which_key'})
	call minpac#add('honza/vim-snippets',
				\{'type': 'opt', 'name': 'snippets'})

	"call minpac#init({'dir':g:pack_path, 'package_name': 'platform'})
	call minpac#add('neoclide/coc.nvim', 
				\{'type': 'opt', 'name': 'coc', 'branch': 'release'})
	call minpac#add('puremourning/vimspector', 
				\{'type':'opt', 'name': 'vimspector'})
	call minpac#add('liuchengxu/vim-clap',
				\{'type': 'opt', 'name': 'clap'})
	call minpac#add('vn-ki/coc-clap',
				\{'type':'opt', 'name': 'coc_clap'})

	"all minpac#init({'dir':g:pack_path, 'package_name': 'utils'})
	call minpac#add('skywind3000/asyncrun.vim', 
				\{'type':'opt', 'name': 'asyncrun'})
	call minpac#add('skywind3000/asynctasks.vim', 
				\{'type':'opt', 'name': 'asynctasks'})
	call minpac#add('Shougo/deol.nvim',
				\{'type': 'opt', 'name': 'deol'})
	call minpac#add('voldikss/vim-floaterm',
				\{'type': 'opt', 'name': 'floaterm'})

	"call minpac#init({'dir':g:pack_path, 'package_name': 'private'})
	call PackPrivate()
endfunction

" Define user commands for updating/cleaning the plugins.
" Each of them calls PackInit() to load minpac and register
" the information of plugins, then performs the task.
command! PackUpdate call PackInit() | call minpac#update('', {'do': 'call minpac#status()'})
command! PackClean  call PackInit() | call minpac#clean()
command! PackStatus call PackInit() | call minpac#status()
