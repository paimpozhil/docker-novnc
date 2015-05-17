FROM ubuntu:trusty
MAINTAINER paimpozhil@gmail.com

ENV DEBIAN_FRONTEND noninteractive

ADD startup.sh /startup.sh

RUN apt-get update -y && \
    apt-get install -y git x11vnc wget python python-numpy unzip Xvfb firefox openbox geany menu && \
    cd /root && git clone https://github.com/kanaka/noVNC.git && \
    chmod 0755 /startup.sh && \
    apt-get autoclean && \
    apt-get autoremove && \
    rm -rf /var/lib/apt/lists/*

CMD /startup.sh
EXPOSE 6080
