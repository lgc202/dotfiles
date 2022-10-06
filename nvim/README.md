# 安装步骤  
## 1. 安装 nvim  
```shell
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
chmod u+x nvim.appimage
mv nvim.appimage /usr/local/bin/nvim
```   
修改 zshrc
```shell
vim ~/.zshrc
# 加入
alias vi=nvim
alias vim=nvim
# 最后别忘了使配置生效
source ~/.zshrc
```
## 3. 安装其它依赖

