FROM gitpod/workspace-full:latest
USER root
RUN apt-get update
RUN apt-get dist-upgrade -y
RUN apt-get install -y fish neofetch python python2 python3 bc make build-essential libncurses5-dev libncursesw5-dev wget curl
RUN apt-get clean && rm -rf /var/cache/apt/* && rm -rf /var/lib/apt/lists/* && rm -rf /tmp/*
USER gitpod
ENV ARCH=arm64
ENV SUBARCH=arm64
USER root
