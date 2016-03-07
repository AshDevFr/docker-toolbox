FROM ubuntu:trusty
MAINTAINER AshDev <ashdevfr@gmail.com>

RUN apt-get update

RUN apt-get install curl wget vim git

# Zsh
RUN apt-get install zsh
RUN sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

