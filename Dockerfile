FROM ubuntu:16.04

MAINTAINER think@hotmail.de

RUN apt-get update \
 && apt-get install -y \
   qt5-default qtdeclarative5-dev \
   qml-module-qtquick-controls qml-module-qttest \
   qml-module-qtquick2 qml-module-qtquick-layouts \
   qml-module-qtgraphicaleffects qml-module-qtqml-models2 \
   qml-module-qtquick-dialogs \
   qtbase5-private-dev pkg-config \
   git build-essential cmake cargo libqwt-qt5-dev wget \
 && wget https://files.panopticon.re/panopticon-master-xenial.deb \
 && dpkg -i pan*.deb

CMD ["qtpanopticon"]
