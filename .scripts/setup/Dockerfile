FROM ubuntu
COPY ./folder-setup /
COPY ./install-gh /
COPY ./install-docker /
COPY ./install-golang /
COPY ./install-neovim /
RUN set -x \
  && useradd -s /bin/bash -d /home/ritux/ -m -G sudo ritux \
  && apt-get update \
  && apt-get install sudo wget curl -y

