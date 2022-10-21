FROM ubuntu:20.04

LABEL maintainer="development@live.cn"

# 换源
# RUN  sed -i s@/archive.ubuntu.com/@/mirrors.aliyun.com/@g /etc/apt/sources.list
# RUN  apt-get update
RUN  sed -i s@/archive.ubuntu.com/@/mirrors.aliyun.com/@g /etc/apt/sources.list
RUN  sed -i s@/security.ubuntu.com/@/mirrors.aliyun.com/@g /etc/apt/sources.list
RUN  apt-get clean
RUN  apt-get update


# Create a no-passowrd sudo user
RUN apt-get update \
    && apt-get install -y sudo \
    && useradd -m ubuntu -s /bin/bash && adduser ubuntu sudo \
    && echo "ubuntu ALL=(ALL) NOPASSWD : ALL" | tee /etc/sudoers.d/nopasswd4sudo

# Adjust Timezone
# ENV DEBIAN_FRONTEND=noninteractive
# RUN apt-get install -y tzdata \
#     && ln -fs /usr/share/zoneinfo/Asia/Tokyo /etc/localtime

USER ubuntu
WORKDIR /home/ubuntu

COPY install.sh . 
RUN sudo chmod +x install.sh
RUN ./install.sh

SHELL ["/bin/zsh","-ic"] 
RUN source ~/.zshrc

ENTRYPOINT ["/bin/zsh"]