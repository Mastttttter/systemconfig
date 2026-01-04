## pacman
pacman -Q 

查询

pacman -R 

删除

** 在删除之后 **

pacman -Rns $(pacman -Qdtq)

清除空依赖
