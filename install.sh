#!/bin/bash
# ZSH
sudo apt install zsh
zsh --version
chsh -s $(which zsh)
# Xclip
sudo apt install xclip
# Node 
curl -sL https://deb.nodesource.com/setup_14.x | sudo -E bash -
sudo apt install -y nodejs
# Docker 
sudo apt install apt-transport-https ca-certificates curl
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable"
sudo apt install docker-ce docker-ce-cli containerd.io
# oh-my-zsh
if [ ! -d "$ZSH" ]; then
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
fi
# zsh-syntax-highlighting
if [ -z "$(ls -A ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting)" ]; then
   git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
fi
# Copy .zshrc
sudo cp .zshrc /root/
# install yarn via npm
npm install --global yarn
yarn --version

