## pacman

pacman -Q

查询

pacman -R

删除

**在删除之后**

pacman -Rns $(pacman -Qdtq)

清除空依赖

## conda

I don't like auto activate `conda env`

```fish
conda config --set auto_activate false
```

Then require control it manually

```fish
conda activate base
conda deactivate
```

## npm

I prefer this

```fish
npm config set prefix ~/.local
```
