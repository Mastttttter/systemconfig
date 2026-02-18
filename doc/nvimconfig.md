# nvim

我的nvim使用`lazy.nvim`，对于wsl下arch系统做了适配

## 花里胡哨的小玩意

cursor animation:

`sphamba/smear-cursor.nvim`

## lan

Most of them are powered by `LazyExtras`

### Markdown

#### prerequisite

`marksman`

You can install it in arch use pacman

```shell
sudo pacman -Syu marksman
```

#### Usage

Use `:MarkdownPreview` to preview current markdown in default browser

### python

#### prerequisite

`pyright` `fzf` `ruff` `debugpy`

You can install them in arch use `pacman`

```shell
sudo pacman -Syu pyright fzf ruff python-debugpy
```

## Special key maps

| Key | Description | Mode |
|-----|-------------|------|
|`jk`|`<ESC>`|i|
|`kj`|`<ESC>`|i|
|`jk`|`<C-\><C-n>`|t|
|`kj`|`<C-\><C-n`|t|

## Usage of default plugins

### tex

#### prerequisite

```shell
sudo pacman -S latex
```

> tips after enable tex support in LazyExtras , the default use pdflatex not xelatex, that does not support Chinese. To use xelatex, add `%!TEX program = xelatex` at the top of the tex file.

> Another tips: if you're use wsl arch, check your `/etc/paperconfig` delete the guide note in that file and add `a4` or something you want to it.
