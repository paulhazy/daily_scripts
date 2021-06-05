#!/usr/bin/env bash
sudo apt update -y
sudo apt install apt-transport-https ca-certificates curl gnupg lsb-release -y

# add fingerprint
sudo curl -fsSL https://download.docker.com/linux/debian/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg

echo \
  "deb [arch=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/debian \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

# update repo
sudo apt update -y

sudo apt install docker-ce docker-ce-cli containerd.io -y

# list the available version in repo
apt-cache madison docker-cedocker
