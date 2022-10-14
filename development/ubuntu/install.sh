#!/usr/bin/env bash
# 遇到错误就退出
set -e

# 安装一些必要工具
sudo apt-get install -y git zsh curl net-tools iputils-ping vim python

# 安装oh-myzsh
sudo sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" \
    && sudo usermod -s /bin/zsh ubuntu

# 更换主题
sed -i '/export ZSH=\"\$HOME\/\.oh-my-zsh\"/a\export LC_ALL=C.UTF-8\nexport LANG=C.UTF-8\n' ~/.zshrc
sed -i 's/robbyrussell/agnoster/' ~/.zshrc

# 安装插件
cd ~/.oh-my-zsh/plugins
git clone https://github.com/zsh-users/zsh-autosuggestions.git
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git
sed -i '/plugins=(git)/c\plugins=(git zsh-autosuggestions zsh-syntax-highlighting)' ~/.zshrc

git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
echo y | ~/.fzf/install


