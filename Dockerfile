# Ubuntu focal 
# 
# Run Ubuntu MATE desktop in docker. 

FROM ubuntu:focal

ADD sources.list /etc/apt/

ENV SHELL=/bin/bash

# 安装flutter-elinux相关开发工具
RUN env DEBIAN_FRONTEND=noninteractive apt-get install -y \
      clang cmake build-essential \
      libegl1-mesa libgles2-mesa libxkbcommon-dev\
      pkg-config libegl1-mesa-dev  libgles2-mesa-dev \
      libwayland-dev wayland-protocols\
      libdrm-dev libgbm-dev libinput-dev libudev-dev libsystemd-dev\
      libglib2.0-dev libgstreamer1.0-dev\
      libgstreamer-plugins-base1.0-dev \
      gstreamer1.0-plugins-base gstreamer1.0-plugins-good \
      gstreamer1.0-plugins-bad gstreamer1.0-plugins-ugly gstreamer1.0-libav\
      git\
      unzip\ 
      curl\ 
      weston

# Language/locale settings
#   replace en_US by your desired locale setting, 
#   for example de_DE for german.
ENV LANG en_US.UTF-8
RUN echo $LANG UTF-8 > /etc/locale.gen && \
    env DEBIAN_FRONTEND=noninteractive apt-get install -y \
     locales && \
    update-locale --reset LANG=$LANG 

CMD ["ubuntu-session"]
