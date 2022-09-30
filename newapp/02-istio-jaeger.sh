istioctl manifest install \
    --skip-confirmation &&

echo "sleeping for 30s to get Istio G/W LB id.."
sleep 30;

# set tracing to 100% to Jager can show each txn
istioctl install -f 02b-istio-mesh-config.yaml -y

# label namespace so Istio can inject proxy car
kubectl --namespace istio-system \
    get service istio-ingressgateway &&

export INGRESS_HOST=$(kubectl \
    --namespace istio-system \
    get service istio-ingressgateway \
    --output jsonpath="{.status.loadBalancer.ingress[0].ip}") &&
echo $INGRESS_HOST &&

kubectl label namespace default \
    istio-injection=enabled && 
kubectl get ns --show-labels

# install Jaeger for tracing
kubectl apply -f 02a-jaeger.yaml