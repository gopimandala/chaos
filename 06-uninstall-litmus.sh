#!/usr/bin/env bash
# litmus uninstall
helm uninstall litmuschaos  --namespace litmus &&
kubectl delete ns litmus
