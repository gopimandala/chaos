kubectl create namespace go-demo-8 &&
kubectl --namespace go-demo-8 \
    apply --filename k8s/terminate-pods/pod.yaml
