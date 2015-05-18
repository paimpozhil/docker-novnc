FROM ubuntu:trusty
MAINTAINER paimpozhil@gmail.com
RUN apt-get update -y
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get install -y git x11vnc wget python python-numpy unzip Xvfb firefox openbox geany
RUN cd /root && git clone https://github.com/kanaka/noVNC.git 
ADD startup.sh /startup.sh
RUN chmod 0755 /startup.sh
CMD /startup.sh
EXPOSE 6080
