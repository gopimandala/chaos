#!/usr/bin/env bash
helm repo add chaos-mesh https://charts.chaos-mesh.org &&
kubectl create ns chaos-testing &&
helm install chaos-mesh chaos-mesh/chaos-mesh -n=chaos-testing --set chaosDaemon.runtime=containerd --set chaosDaemon.socketPath=/run/containerd/containerd.sock --version 2.2.0 &&
kubectl get pods -n chaos-testing
