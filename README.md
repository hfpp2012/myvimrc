## 安装

必须的软件：

1. https://github.com/ggreer/the_silver_searcher
2. https://github.com/BurntSushi/ripgrep
3. https://github.com/sharkdp/bat
4. https://github.com/junegunn/fzf

先安装插件管理器 [vim-plug](https://github.com/junegunn/vim-plug)

把文件 [plug.vim](https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim) 下载后复制到 `~/.vim/autoload` 目录即可（没有 autoload 目录可自行创建)


```
cd ~
git clone git@github.com:hfpp2012/myvimrc.git
ln -s ~/myvimrc/.vimrc ~/.vimrc
ln -s ~/myvimrc/coc-settings.json ~/.vim/coc-settings.json
vim +PlugInstall
```

字体：https://github.com/Karmenzind/monaco-nerd-fonts/tree/master/fonts

下载后复制 ~/Library/Fonts (mac)

css color 支持需要 golang

* https://github.com/RRethy/vim-hexokinase/

* https://golang.org/doc/install
