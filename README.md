## 安装

必须的软件：

1. https://github.com/ggreer/the_silver_searcher
2. https://github.com/BurntSushi/ripgrep
3. https://github.com/sharkdp/bat
4. https://github.com/junegunn/fzf

先安装插件管理器 [vim-plug](https://github.com/junegunn/vim-plug)


```
cd ~
git clone git@github.com:hfpp2012/myvimrc.git
cd myvimrc
ln -s ~/myvimrc/.vimrc ~/.vimrc
ln -s ~/myvimrc/.vimrc.bundle ~/.vim/.vimrc.bundle
ln -s ~/myvimrc/.vimrc.settings ~/.vim/.vimrc.settings
ln -s ~/myvimrc/.which-key.vim ~/.vim/.which-key.vim
vim +PlugInstall
```

字体：https://github.com/Karmenzind/monaco-nerd-fonts/tree/master/fonts

下载后复制 ~/Library/Fonts (mac)
