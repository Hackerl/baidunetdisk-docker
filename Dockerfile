# Pull base image.
FROM jlesage/baseimage-gui:debian-10

# Install baidu netdisk.
ADD https://issuepcdn.baidupcs.com/issue/netdisk/LinuxGuanjia/4.3.0/baidunetdisk_4.3.0_amd64.deb /baidunetdisk_4.3.0_amd64.deb

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update
RUN apt-get install -y apt-utils
RUN apt-get install -y -f /baidunetdisk_4.3.0_amd64.deb
RUN apt-get install -y libgbm1 libasound2
RUN apt-get install -y ttf-wqy-zenhei
RUN apt-get clean all
RUN rm /baidunetdisk_4.3.0_amd64.deb

# Copy the start script.
COPY startapp.sh /startapp.sh

# Set the name of the application.
ENV USER_ID=0
ENV APP_NAME="netdisk"
