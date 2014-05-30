FROM ubuntu:14.04

EXPOSE 58846 58846

RUN useradd thomas
RUN apt-get update && apt-get install -y deluged=1.3.6-0ubuntu3

CMD su - thomas -c "/usr/bin/deluged"
