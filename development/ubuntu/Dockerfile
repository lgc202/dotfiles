FROM ubuntu:20.04

LABEL maintainer="development@live.cn"

# 换源
RUN  sed -i s@/archive.ubuntu.com/@/mirrors.aliyun.com/@g /etc/apt/sources.list
RUN  apt-get clean
RUN  apt-get update


# Create a no-passowrd sudo user
RUN apt-get update \
    && apt-get install -y sudo \
    && useradd -m ubuntu -s /bin/bash && adduser ubuntu sudo \
    && echo "ubuntu ALL=(ALL) NOPASSWD : ALL" | tee /etc/sudoers.d/nopasswd4sudo

# Adjust Timezone
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get install -y tzdata \
    && ln -fs /usr/share/zoneinfo/Asia/Tokyo /etc/localtime

USER ubuntu
WORKDIR /home/ubuntu

# Install zsh
RUN sudo apt-get install -y git zsh curl \
    && sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" \
    && sudo usermod -s /bin/zsh ubuntu

ENTRYPOINT ["/bin/zsh"]