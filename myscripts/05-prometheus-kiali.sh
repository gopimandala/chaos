kubectl apply \
    --filename https://raw.githubusercontent.com/istio/istio/release-1.9/samples/addons/prometheus.yaml &&
sleep 10;
kubectl apply -f kiali.yaml
