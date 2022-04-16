FROM ubuntu
COPY ./folder-setup /
COPY ./install-doas /
COPY ./install-gh /
COPY ./install-docker /
COPY ./install-golang /
COPY ./install-neovim /
COPY ./install-projects /
COPY ./install-tmux /
COPY ./install-node /
COPY ./install-vagrant /
RUN set -x \
  && useradd -s /bin/bash -d /home/ritux/ -m -G sudo ritux \
  && apt update \
  && apt install sudo wget curl git xz-utils lsb_release -y \
  && apt install vagrant-libvirt libvirt-daemon-system -y \
  && usermod --append --groups libvirt ritux \

