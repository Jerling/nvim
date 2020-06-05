" vimscript
"
" ginit.vim
"
" Copyright (C) 2020 Jerling <linjieli001@qq.com>
"
" Distributed under terms of the MIT license.
"

" open clipboard on startup
sil!call GuiClipboard()
" close guipopmenu on startup
sil!call rpcnotify(0, 'Gui', 'Option', 'Popupmenu', '0')
" open clipboard on startup
sil!call GuiClipboard()
" close guipopmenu on startup
sil!call rpcnotify(0, 'Gui', 'Option', 'Popupmenu', '0')

execute 'source' expand(g:personal_dir.'/gui_config.vim')
