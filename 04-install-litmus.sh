#!/usr/bin/env bash
# install litmus
kubectl create ns litmus &&
helm repo add litmuschaos https://litmuschaos.github.io/litmus-helm/ &&
helm install litmuschaos  --namespace litmus litmuschaos/litmus &&
kubectl get pods -n litmus
