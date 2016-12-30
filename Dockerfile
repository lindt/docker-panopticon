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
   git build-essential cmake cargo libqwt-qt5-dev wget

# TODO: Minimize and uninstall dev packages

RUN git clone https://github.com/das-labor/panopticon.git \
 && cd panopticon \
 && cargo build --release

CMD ["qtpanopticon"]
