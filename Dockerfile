FROM ubuntu:trusty
MAINTAINER AshDev <ashdevfr@gmail.com>

RUN apt-get update

RUN apt-get install -y curl wget vim git

# Zsh
RUN apt-get install -y zsh
RUN curl -o-  https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh | bash

# NVM
RUN curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.31.0/install.sh | bash
RUN echo '[[ -r $NVM_DIR/bash_completion ]] && . $NVM_DIR/bash_completion' >> ~/.zshrc


