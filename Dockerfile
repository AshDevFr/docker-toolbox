FROM ubuntu:trusty
MAINTAINER AshDev <ashdevfr@gmail.com>

RUN apt-get update

RUN apt-get install -y curl wget vim git

# Zsh
RUN apt-get install -y zsh
RUN sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

