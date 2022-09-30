istioctl manifest install \
    --skip-confirmation &&

kubectl create namespace istio-system &&

kubectl --namespace istio-system \
    get service istio-ingressgateway &&

export INGRESS_HOST=$(kubectl \
    --namespace istio-system \
    get service istio-ingressgateway \
    --output jsonpath="{.status.loadBalancer.ingress[0].ip}") &&

echo $INGRESS_HOST
