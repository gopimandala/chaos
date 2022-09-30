kubectl apply -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/controller-v1.1.0/deploy/static/provider/cloud/deploy.yaml
export INGRESS_HOST=$(kubectl \
    --namespace ingress-nginx \
    get service ingress-nginx-controller \
    --output jsonpath="{.status.loadBalancer.ingress[0].ip}")
echo $INGRESS_HOST
