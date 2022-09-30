export INGRESS_HOST=$(kubectl -n istio-system get service istio-ingressgateway -o jsonpath='{.status.loadBalancer.ingress[0].ip}')
export INGRESS_PORT=$(kubectl -n istio-system get service istio-ingressgateway -o jsonpath='{.spec.ports[?(@.name=="http2")].port}')
export GATEWAY_URL=$INGRESS_HOST:$INGRESS_PORT
echo $GATEWAY_URL
#curl "http://$GATEWAY_URL/productpage"
#curl -I "http://$GATEWAY_URL/productpage"
for i in $(seq 1 200); do curl -s -o /dev/null "http://$GATEWAY_URL/productpage"; done