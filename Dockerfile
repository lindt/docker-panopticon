FROM ubuntu:16.04

MAINTAINER think@hotmail.de

# TODO: uninstall dev packages
RUN apt-get update \
 && apt-get install -y \
   qt5-default qtdeclarative5-dev \
   libqt5svg5-dev \
   qml-module-qtquick-controls qml-module-qttest \
   qml-module-qtquick2 qml-module-qtquick-layouts \
   qml-module-qtgraphicaleffects qml-module-qtqml-models2 \
   qml-module-qtquick-dialogs \
   qtbase5-private-dev pkg-config \
   git build-essential cmake libqwt-qt5-dev curl \
 && curl https://sh.rustup.rs -sSf | sh \
 && git clone https://github.com/das-labor/panopticon.git \
 && cd panopticon \
 && source $HOME/.cargo/env \
 && cargo build --release \
 && apt-get auto-remove -y curl

CMD ["qtpanopticon"]
