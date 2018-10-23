# ubuntu 18.04

FROM ubuntu:18.04

ADD ./sources.list.bionic /etc/apt/sources.list

RUN apt-get update

# vim
RUN apt-get install -y \
vim \
wget \
sudo

# 设置语言
RUN apt-get install -y locales language-pack-zh-hans \
  && localedef -i zh_CN -c -f UTF-8 -A /usr/share/locale/locale.alias zh_CN.UTF-8
ENV LANG=zh_CN.UTF-8

# 设置时区
RUN export DEBIAN_FRONTEND=noninteractive && apt-get install -y tzdata \
  && cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && echo Asia/Shanghai > /etc/timezone \
  && dpkg-reconfigure -f noninteractive tzdata

# 清除
RUN rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN useradd -d /home/admin -m admin && echo admin:123456 | chpasswd && adduser admin sudo