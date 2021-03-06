#!bin/bash

# Remove any currently installed Docker for clean install
sudo apt-get remove docker docker-engine docker.io containerd runc

# Download latest Package Information
sudo apt-get update

# Set Up Repository
sudo apt-get install \
    ca-certificates \
    curl \
    gnupg \
    lsb-release

# Get Docker Official GPG Key
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg

# Get Docker Stable
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

# Install Docker Engine
 sudo apt-get update
 sudo apt-get install docker-ce docker-ce-cli containerd.io docker-compose-plugin -y
