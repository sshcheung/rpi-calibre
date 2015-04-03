FROM resin/rpi-raspbian:wheezy
MAINTAINER Simon Cheung <cheung.sai.ho@gmail.com>

RUN apt-get update \
 && apt-get install -y \
      calibre \
 && rm -rf /tmp/*

RUN mkdir -p /opt/calibre/library

EXPOSE 8080
VOLUME ["/opt/calibre/library"]
CMD /usr/bin/calibre-server --with-library=/opt/calibre/library --username=$USERNAME --password=$PASSWORD
