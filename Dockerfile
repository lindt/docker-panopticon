FROM ubuntu:16.04

MAINTAINER think@hotmail.de

RUN apt-get update \
 && apt-get install -y wget \
 && wget https://files.panopticon.re/panopticon-master-xenial.deb \
 && dpkg -i pan*.deb; apt-get -y -f install \
 && apt-get auto-remove -y wget

CMD ["qtpanopticon"]
