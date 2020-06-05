# nvim config
My nvim config, including coc.nvim ..., just like vscode.

## Install

``` sh
git clone https://github.com/Jerling/nvim ~/.config/nvim
cd ~/.config/nvim
make
```

## Dependencs
check `scipts/install_deps`

If wrong, should install by yourself, it just only test on Arch

## Hack
This config base on naive pack feature, including three parts:

1. pack manager: I use minpack, if you want to change another. Just modify the `core/pack/pack_manager.vim` file.
2. pack control: Defaultly, all plugin install in opt, some we can choice which should be load when startup. Just modify `*_ctl.vim` files.
3. pack config: Some basic config for plugin, but if it not loaded at startup, it maybe invalid. Just modify `*._conf.vim` files.
4. keymaps : All pack's keymap, and base on vim-which-key,which can show keymaps. But you can turn off it. Just modify `*_key*.vim` files.

You can also use you personal config, example:
[https://github.com/Jerling/nvim.d](https://github.com/Jerling/nvim.d)

## Attention
Recommend use [Thinkvim](https://github.com/hardcoreplayers/ThinkVim). These config only for my self, maybe update very slowly ....
