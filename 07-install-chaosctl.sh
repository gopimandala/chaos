#!/usr/bin/env bash
curl -O https://chaosctl.chaosnative.com/chaosctl-linux-amd64-v0.2.0.tar.gz && 
tar -zxvf chaosctl-linux-amd64-v0.2.0.tar.gz && chmod +x chaosctl &&
sudo mv chaosctl /usr/local/bin/chaosctl && 
chaosctl version
