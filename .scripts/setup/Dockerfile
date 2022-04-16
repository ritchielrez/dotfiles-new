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
RUN set -x \
  && useradd -s /bin/bash -d /home/ritux/ -m -G sudo ritux \
  && apt-get update \
  && apt-get install sudo wget curl git xz-utils lsb_release -y

