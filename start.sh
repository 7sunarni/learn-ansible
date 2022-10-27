#!/usr/bin/env bash

# Copy SSH pub key
cp -f ~/.ssh/id_rsa* .

# clear ssh known_hosts file, because each container pubkey is different
cp ~/.ssh/known_hosts ~/.ssh/known_hosts.bac && : > ~/.ssh/known_hosts

# start up sshd container
sudo docker-compose up -d