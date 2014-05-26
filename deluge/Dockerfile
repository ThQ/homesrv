FROM ubuntu:14.04

EXPOSE 58846 58846

RUN apt-get update && apt-get install -y deluged

RUN mkdir /deluged
RUN mkdir /config

ADD core.conf /config/core.conf
ADD auth /config/auth

CMD /usr/bin/deluged -c /config -L info -d -l /config/log -L info
