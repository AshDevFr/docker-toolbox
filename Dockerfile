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

# Git Aliases
RUN git config --global alias.co = checkout
RUN git config --global alias.ci = commit
RUN git config --global alias.cp = cherry-pick
RUN git config --global alias.st = status
RUN git config --global alias.br = branch
RUN git config --global alias.r = rebase
RUN git config --global alias.ri = rebase -i
RUN git config --global alias.l = !git --no-pager log --graph --pretty=format:'%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --date=relative
RUN git config --global alias.lg = log --graph --pretty=format:'%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --date=relative
