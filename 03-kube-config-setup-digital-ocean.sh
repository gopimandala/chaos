#!/usr/bin/env bash
# remember to change the cluster id in the last line, also keep the Digital Ocean API token handy for 'doctl auth init'
cd ~
wget https://github.com/digitalocean/doctl/releases/download/v1.77.0/doctl-1.77.0-linux-amd64.tar.gz
tar xf ~/doctl-1.77.0-linux-amd64.tar.gz
sudo mv ~/doctl /usr/local/bin
doctl auth init &&
doctl account get &&
doctl kubernetes cluster kubeconfig save 8cb3d9fa-599c-47d0-ae69-3cfb4cec9e8b
