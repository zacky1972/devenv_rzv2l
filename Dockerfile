FROM --platform=linux/x86_64 ubuntu:20.04
RUN ln -sf /usr/share/zoneinfo/Asia/Tokyo /etc/localtime
RUN apt-get update \
&& apt-get upgrade \
&& apt-get install -y --no-install-recommends \
  gawk wget git-core diffstat unzip texinfo gcc-multilib \
  build-essential chrpath socat cpio python python3 python3-pip python3-pexpect \
  xz-utils debianutils iputils-ping libsdl1.2-dev xterm p7zip-full libyaml-dev \
  libssl-dev \
&& apt-get -y clean \
&& rm -rf /var/lib/apt-lits/*
RUN git config --global user.email "zacky1972@gmail.com" \
&& git config --global user.name "Susumu Yamazaki"
