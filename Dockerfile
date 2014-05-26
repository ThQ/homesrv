FROM ubuntu:14.04


RUN apt-get update && apt-get install -y deluged

RUN mkdir /root/deluged
RUN mkdir /deluged

EXPOSE 58846 58846
ADD core.conf /root/deluged/core.conf
ADD auth /root/deluged/auth
RUN ls /root/deluged
CMD /usr/bin/deluged -c /root/deluged -L info -d
