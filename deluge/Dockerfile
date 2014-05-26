FROM ubuntu:14.04

EXPOSE 58846 58846

RUN apt-get update && apt-get install -y deluged

RUN mkdir /deluged
RUN mkdir /deluged/config
RUN mkdir /deluged/config/deluged

ADD core.conf /deluged/config/deluged/core.conf
ADD auth /deluged/config/deluged/auth

CMD /usr/bin/deluged -c /deluged/config/deluged -L info -d -l /deluged/config/deluged/log -L info
